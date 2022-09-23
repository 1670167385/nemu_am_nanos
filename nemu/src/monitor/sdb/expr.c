#include <isa.h>
/* We use the POSIX regex functions to process regular expressions.*/
#include <regex.h>

enum {
	TK_NOTYPE = 256, TK_EQ = 255,
	MINUS = 254, // -123
	REFER = 253, // * pointer
	HEX_NUM = 252, REG = 251, POINTER = 250, RUB_PLUS = 249,	
	/* TODO: Add more token types */
	NUM = 0
};

static struct rule {
	const char *regex;
	int token_type;
} rules[] = {
	{" +", TK_NOTYPE},		// spaces
	{"\\+", '+'},			// plus
	{"-", '-'},				// minus
	{"\\*", '*'},			// mul 
	{"\\/", '/'},			// div
	{"\\(", '('},			// (
	{"0x[0-9A-F]+", HEX_NUM},	//HEX
	{"\\)", ')'},			// )
	{"[0-9]+", NUM},		// num
	{"==", TK_EQ},          // equal
	{"\\$[a-z][a-z0-9]+", REG}//REG
};

#define NR_REGEX ARRLEN(rules)
static regex_t re[NR_REGEX] = {};
typedef struct token {
	int type;
	char str[32];
} Token;
static Token tokens[320] __attribute__((used)) = {};
static int nr_token __attribute__((used))  = 0;

/* generate the RE */
void init_regex() {
	char error_msg[128];
	int ret;

	for (int i = 0; i < NR_REGEX; i ++) {
        ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
        if (ret != 0) {
            regerror(ret, &re[i], error_msg, 128);
            panic("regex compilation failed: %s\n%s", error_msg, rules[i].regex);
        }
    }
}

/* match the expresstion with RE */
static bool make_token(char *e) {
	int p = 0;
	int i;
	regmatch_t pmatch;

	nr_token = 0;

	while (e[p] != '\0') {
		for (i = 0; i < NR_REGEX; i ++) {
			if (regexec(&re[i], e + p, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
				char *substr_start = e + p;
				int substr_len = pmatch.rm_eo;

				//Log("match rules[%d] = \"%s\" at position %d with len %d: %.*s",
				//	i, rules[i].regex, p, substr_len, substr_len, substr_start);

				p += substr_len;

				/* TODO: Now a new token is recognized with rules[i]. Add codes
				* to record the token in the array `tokens'. For certain types
				* of tokens, some extra actions should be performed.
				*/
		
				switch (rules[i].token_type) {
				case '+':
					tokens[nr_token].type='+';
					break;
				case '-':
					tokens[nr_token].type='-';
					break;
				case '*':
					tokens[nr_token].type='*';
					break;
				case '/':
					tokens[nr_token].type='/';			
					break;
				case '(':
					tokens[nr_token].type='(';
					break;
				case ')':
					tokens[nr_token].type=')';
					break;
				case TK_EQ:
					tokens[nr_token].type=TK_EQ;
					break;
				case HEX_NUM:
					tokens[nr_token].type = HEX_NUM;
					assert(substr_len<=29);
					memcpy(tokens[nr_token].str, substr_start,substr_len);
					tokens[nr_token].str[substr_len]=0;	
					break;
				case NUM:
					tokens[nr_token].type=NUM;
					assert(substr_len<=29);
					memcpy(tokens[nr_token].str, substr_start,substr_len);
					tokens[nr_token].str[substr_len]=0;
					break;
				case REG:
					tokens[nr_token].type=REG;
					assert(substr_len<=29);
					memcpy(tokens[nr_token].str, substr_start + 1, substr_len - 1);
					tokens[nr_token].str[substr_len - 1] = 0;
					break;
				default:
					nr_token--;
				}		
				nr_token++;
				break;								//break when found one exist
			}
		}
		if (i == NR_REGEX) {
			printf("no match at position %d\n%s\n%*.s^\n", p, e, p, "");
			return false;
		}
	}
	return true;
}

/* check the total parentheses */
bool check_parentheses(int l, int r)
{
	int cnt = 0;
	for(int i = l; i <= r; i++){
		if(tokens[i].type == '(') cnt++;
		if(tokens[i].type == ')') cnt--;
	}	
	if(cnt) return 1;
	else return 0;
}

/* get * con */
int get_pointer(){
	return 0;
}

/* ERROR code for p */
enum {
	IN_PARENTH = -1,
	ONE_NUM = -2
};


int fd_m_token(int lf, int ri){
	int cnt = 0, p = 0;
	char type = 0;
	bool in_par = 1;
	/* find the position */
	for(int i = ri - 1; i >= lf; i--)
	{
		if(tokens[i].type == ')') cnt++;
		else if(tokens[i].type == '(') cnt--;
		else if(cnt == 0){
			in_par = 0;
			if(i > lf && (tokens[i - 1].type == ')' || tokens[i - 1].type == NUM
				   	 ||tokens[i - 1].type == REG || tokens[i - 1].type == HEX_NUM) ){
					   	if(type == 0 && (tokens[i].type == '-' || tokens[i].type == '+'))
						{
							p=i;
							type = tokens[i].type;
						}
						if(type != '*' && type != '/' && (tokens[i].type == '*' || tokens[i].type == '/'))
						{
							p=i;
							type = tokens[i].type;
						} 
					 }
			if(tokens[i].type == TK_EQ) return i;
		}	
	}
	if(in_par) return IN_PARENTH;
	else if(type != 0) return p;

	return ONE_NUM;	
}

word_t eval(int lf, int ri){
	//Log("lf = %d , ri = %d", lf, ri);
	assert(lf < ri);
	if(lf == ri - 1) {
		assert(tokens[lf].type == NUM || tokens[lf].type == REG || tokens[lf].type == HEX_NUM);
		if(tokens[lf].type == REG)
		{
			bool success = true;
			word_t val = isa_reg_str2val(tokens[lf].str, &success);
			assert(success);
			return val;
		}
		else if(tokens[lf].type == HEX_NUM){
			word_t val;
			sscanf(tokens[lf].str,"0x%x",&val);
			return val;
		}
		else{
	        word_t val;
			sscanf(tokens[lf].str,"%d",&val);
			return val;
		}	
	}
	else {
		int p = fd_m_token(lf, ri);	
		switch (p)
		{
		case IN_PARENTH:
			return eval(lf + 1, ri - 1);
		case ONE_NUM:
			if(tokens[lf].type == '*') return get_pointer(eval(lf + 1, ri));
			if(tokens[lf].type == '-') return (-1) * eval(lf + 1, ri);
			if(tokens[lf].type == '+') return eval(lf + 1, ri);
		default:
			int val1 = eval(lf, p);
			int val2 = eval(p + 1, ri);
			Log("%d %c %d",val1, tokens[p].type, val2);
			switch (tokens[p].type) {
				case '+': return val1 + val2;
				case '-': return val1 - val2;
				case '*': return val1 * val2;
				case '/': return val1 / val2;
				case TK_EQ : return val1 == val2;
				default: assert(0);
			}
		}	
	}
}

word_t expr(char *e, bool *success) {
	if (!make_token(e) || check_parentheses(0, nr_token - 1)) {
		*success = false;
		return 0;
	}	
	/* TODO: Insert codes to evaluate the expression. */	
	word_t ans = eval(0, nr_token); 
	
	return ans;
}
