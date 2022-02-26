#include <isa.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <regex.h>

#define MISS_MATCHING 0x7fffffff
enum {
  TK_NOTYPE = 256, TK_EQ,
  /* TODO: Add more token types */
  NUM = 0
};

static struct rule {
  const char *regex;
  int token_type;
} rules[] = {

  /* TODO: Add more rules.
   * Pay attention to the precedence level of different rules.
   */

  {" +", TK_NOTYPE},    // spaces
  {"\\+", '+'},         // plus
  {"-", '-'},			// minus
  {"\\*", '*'},			// mul 
  {"\\/", '/'},			// div
  {"\\(", '('},			// (
  {"\\)", ')'},			// )
  {"[0-9]+", NUM},		// num
  {"==", TK_EQ}         // equal
};

#define NR_REGEX ARRLEN(rules)

static regex_t re[NR_REGEX] = {};

/* Rules are used for many times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
  int i;
  char error_msg[128];
  int ret;

  for (i = 0; i < NR_REGEX; i ++) {
    ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
    if (ret != 0) {
      regerror(ret, &re[i], error_msg, 128);
      panic("regex compilation failed: %s\n%s", error_msg, rules[i].regex);
    }
  }
}

typedef struct token {
  int type;
  char str[32];
} Token;

static Token tokens[32] __attribute__((used)) = {};
static int nr_token __attribute__((used))  = 0;

static bool make_token(char *e) {
  int position = 0;
  int i;
  regmatch_t pmatch;

  nr_token = 0;

  while (e[position] != '\0') {
    /* Try all rules one by one. */
    for (i = 0; i < NR_REGEX; i ++) {
  		if (regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
        char *substr_start = e + position;
        int substr_len = pmatch.rm_eo;

        Log("match rules[%d] = \"%s\" at position %d with len %d: %.*s",
            i, rules[i].regex, position, substr_len, substr_len, substr_start);

        position += substr_len;

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
			case NUM:
				tokens[nr_token].type=NUM;
				assert(substr_len<=29);
				memcpy(tokens[nr_token].str,substr_start,substr_len);
				tokens[nr_token].str[substr_len]=0;
			default:
				;
		}		
      nr_token++;
	  break;								//break when found one exist
	  }
		printf("%d",nr_token);
    }


    if (i == NR_REGEX) {
      printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
      return false;
    }
  }

  return true;
}

int ch_to_int(char *str)
{
	int position = 0;
	int m=0;
	
	while(str[position]!='\0')
	{
		m=m*10;
		m=m+str[position++]-'0';
	}
	
	return m;	
}

int check_parentheses(int l, int r)
{
	int cnt = 0;
	int false_flag = 0;
	if(tokens[l].type == '(' && tokens[r].type == ')')
	{
		for(int i=l;i<=r;i++)
		{
			if(tokens[i].type == '(')
				cnt++;
			if(tokens[i].type == ')')
				cnt--;
			if(cnt == 0 && i < r)					//'(...) + (...)'   will make cnt = 0  , but '(..(..) + (..)..)'  won't
				false_flag = 1;
			if(cnt<0)
				return MISS_MATCHING;
			printf("%d ",cnt);
		}
		if(cnt == 0 && false_flag == 0)
			return true;
		else if(cnt == 0)					//only when miss matching not happen , consider false case
			return false;
		else//cnt != 0
			return MISS_MATCHING;
	}	
	return false;
}

int fd_m_token(int lf, int ri, int *lflag, int *rflag)
{
	int cnt = 0, op = ri + 1;
	int type = 0;

	/* find the position */
	for(int j = ri; j >= lf; j--)
	{
		if(tokens[j].type == ')')
			cnt++;
		if(tokens[j].type == '(')
			cnt--;
		if(cnt == 0 && type == 0 && (tokens[j].type == '*'||tokens[j].type == '/'))
		{
			op = j;
			type = '*';
		}
		if(cnt == 0 && tokens[j].type == '-' && (j && tokens[j - 1].type != NUM && tokens[j - 1].type != ')') )
			continue;
		if(tokens[j].type == '-' && j == 0)
			continue;

		if(cnt == 0 && type != '+' && (tokens[j].type == '+'||tokens[j].type == '-') )
		{
			op = j;
			type = '+';
		}

	}
	

	/* simplify the flag of l/r */	
	for(int j = lf; tokens[j].type == '-'; j++)
		*lflag = *lflag + 1;
	for(int j = op + 1; tokens[j].type == '-'; j++)
		*rflag = *rflag + 1 % 2;
	
	return op;	
}

int eval(int lf, int ri){
	assert(lf <= ri);
	/*wrong case ,  quit*/
	int match_st = check_parentheses(lf, ri);
	if(lf ==ri){
		/*single token.
		 * it should be a number
		 * return the value of the number
		 */

		assert(tokens[lf].type==0);
		return ch_to_int(tokens[lf].str); 
	}
	else if(match_st == true)
	{
		/* The expression is surrounded by a matched pair of parentheses.
		* If that is the case, just throw away the parentheses.
		*/
		return eval(lf + 1, ri - 1);
	}
	else
	{
		/*miss matching of parenthess*/
		if(match_st == MISS_MATCHING)
			return MISS_MATCHING;
				
		/*find main token position*/
		int lflag = 0, rflag = 0;
		int op = fd_m_token(lf, ri, &lflag, &rflag);
		
		int val1 = eval( lf + lflag, op - 1);
		int val2 = eval( op + 1 + rflag, ri);
		if(lflag % 2) val1 *= -1;
		if(rflag % 2) val2 *= -1;

		if(val1 != MISS_MATCHING && val2 != MISS_MATCHING)
		{
			switch (tokens[op].type) {
			case '+': return val1 + val2;
			case '-': return val1 - val2;
			case '*': return val1 * val2;
			case '/': return val1 / val2;
			default: assert(0);
			}
		}	
		else
			return MISS_MATCHING;
	}
	return MISS_MATCHING;		
}

word_t expr(char *e, bool *success) {
	if (!make_token(e)) {
		*success = false;
		return 0;
	}	

	/* TODO: Insert codes to evaluate the expression. */	
	word_t ans = eval(0, nr_token - 1); 
	if(ans == MISS_MATCHING)
		*success = false;
	return ans;
}
