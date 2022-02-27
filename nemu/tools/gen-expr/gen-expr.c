#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <assert.h>
#include <string.h>

// this should be enough
static char buf[65536] = {};
static char code_buf[65536 + 128] = {}; // a little larger than `buf`
static char *code_format =
"#include <stdio.h>\n"
"int main() { "
"  unsigned result = %s; "
"  printf(\"%%u\", result); "
"  return 0; "
"}";

static void gen_num()
{
	int len = strlen(buf), str_len = 0;
	int num = rand()%20000-10000;
	char str[6] = { 0 };

	if(len + 7 >= 65536)
		return;
	buf[len++] = ' ';

	while(num)
	{
		str[str_len++] = (num % 10) + '0';
		if(num < 0 && num > -10)
			buf[len++] = '-';
		num /= 10;
	}

	while(str_len)
	{
		buf[len++] = str[str_len - 1];
		str_len--;
	}

	buf[len] = '\0';
}

static void gen(char pair)
{
	int len = strlen(buf);
	if(len + 2 >= 65536)return;

	buf[len++] = ' ';
	buf[len++] = pair;
	buf[len] = '\0';
}

static void gen_rand_op()
{
	switch(rand()%4){
	case 0:
		gen('+');
		break;
	case 1:
		gen('-');
		break;
	case 2:
		gen('*');
		break;
	default:
		gen('/');
		break;
	}
}

static void gen_rand_expr() {
	srand(time(NULL));
	switch(rand()%3){
	case 0:
		gen_num();
		break;
	case 1:
		gen('(');
		gen_rand_expr();
		gen(')');
		break;
	default:
		gen_rand_expr();
		gen_rand_op();
		gen_rand_expr();
		break;
	}	
}

int main(int argc, char *argv[]) {
  int seed = time(0);
  srand(seed);
  int loop = 1;
  if (argc > 1) {
    sscanf(argv[1], "%d", &loop);
  }
  int i;
  for (i = 0; i < loop; i ++) {
    gen_rand_expr();

    sprintf(code_buf, code_format, buf);

    FILE *fp = fopen("/tmp/.code.c", "w");
    assert(fp != NULL);
    fputs(code_buf, fp);
    fclose(fp);

    int ret = system("gcc /tmp/.code.c -o /tmp/.expr");
    if (ret != 0) continue;

    fp = popen("/tmp/.expr", "r");
    assert(fp != NULL);

    int result;
    fscanf(fp, "%d", &result);
    pclose(fp);

    printf("%u %s\n", result, buf);
  }
  return 0;
}
