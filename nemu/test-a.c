#include<stdio.h>
#include<stdarg.h>

int sprintf(char *out, const char *fmt, ...) {
  size_t p = 0,pf = 0;

  va_list ap;
  int d;
  int tmp_d;
  char c;
  char *s;
 
  va_start(ap, fmt);
  printf("%s\n\n\n",fmt);
  while(*fmt) {
    while(*(char*)fmt != '%' && *(char*)fmt != '\0'){
      out[p++] = *(char*)fmt;
      printf("%c %d\n",out[p-1], out[p-1]);
      fmt++;
    }
    if(*fmt=='\0')break;
    switch(*(++fmt)) {
      case 's':  /*string*/
        s = va_arg(ap, char *);
        while(*(char*)s != '\0'){
          out[p++] = *(char*)s;
          s++;
        }
        break;
      case 'd':  /*int*/
        d = va_arg(ap, int);
        tmp_d = d;
        while(tmp_d){
          p++;
          tmp_d/=10;
        }
        pf = p;
        while(d){
          out[--p] = (d%10) + '0';
          d/=10;
        }
        p = pf;
        break;
    }
    fmt++;
//    printf("%s\n", out);
  }
  va_end(ap);
}

int main()
{
	
	char s[1000] ="";
sprintf(s, "%d + %d = %d\n", 1, 1, 2);	
printf("%s\n",s);	
	return 0;
}
