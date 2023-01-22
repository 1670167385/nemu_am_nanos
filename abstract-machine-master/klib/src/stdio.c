#include <am.h>
#include <klib.h>
#include <klib-macros.h>
#include <stdarg.h>

#if !defined(__ISA_NATIVE__) || defined(__NATIVE_USE_KLIB__)

int printf(const char *fmt, ...) 
{
  int d,n=0;
  int tmp_d,n_d;
  char *s;
  char c;
  va_list ap;
  va_start(ap, fmt);
  while(*fmt) {
    while(*(char*)fmt != '%' && *(char*)fmt !='\0'){
      putch(*(char*)fmt);
      fmt++;
    }
    if(*fmt=='\0')break;
    switch(*(++fmt)) {
      case 'c':
        n++;
        c = va_arg(ap, int);
        putch(c);
        break;
      case 's':  /*string*/
        n++;
        s = va_arg(ap, char *);
        while(*(char*)s != '\0'){
          putch(*(char*)s);
          s++;
        }
        break;
      case 'd':  /*int*/
        n++;
        d = va_arg(ap,unsigned int);
        n_d = 1;
        tmp_d = d;
        while(tmp_d>9){
          n_d*=10;
          tmp_d/=10;
        }
        while(n_d){
          if(d){
            putch('0' + d/n_d);
            d=d%n_d;
          }
          else
            putch('0');
          n_d/=10;
        }
        break;
      case 'p':  /*addtress*/
      case 'x':  /*16*/
        n++;
        unsigned int ud = va_arg(ap, unsigned int);
        unsigned int un_d = 1;
        unsigned ut_d = ud;

        while(tmp_d>16){
          un_d*=16;
          ut_d/=16;
          putch('c');
          putch('\n');
        }

        while(un_d){
          if(0 < ud && ud < 10){
            putch('0' + ud/un_d);
            ud=ud%n_d;
          }
          else if(ud >= 10){
            putch('a' + ud/un_d - 10);
            if(ud/un_d > 100)
              putch('i');
            ud=ud%un_d;
          }
          else
            putch('0');
          un_d/=16;
        }
        break;
    }
    fmt++;
  }
  va_end(ap);
  return n;
}

int vsprintf(char *out, const char *fmt, va_list ap) {
  panic("Not implemented");
}

int sprintf(char *out, const char *fmt, ...) {
  size_t p = 0,pf = 0;

  va_list ap;
  int d, n = 0;
  int tmp_d;
  char *s;
  char c;
 
  va_start(ap, fmt);
  while(*fmt) {
    while(*(char*)fmt != '%' && *(char*)fmt !='\0'){
      out[p++] = *(char*)fmt;
      fmt++;
    }
    if(*fmt=='\0')break;
    switch(*(++fmt)) {
      case 'c':
        n++;
        c = va_arg(ap, int);
        out[p++] = c;
        break;
      case 's':  /*string*/
        n++;
        s = va_arg(ap, char *);
        while(*(char*)s != '\0'){
          out[p++] = *(char*)s;
          s++;
        }
        break;
      case 'd':  /*int*/
        n++;
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
  }
  va_end(ap);
  out[p]='\0';
  return n;
}

int snprintf(char *out, size_t n, const char *fmt, ...) {
  panic("Not implemented");
}

int vsnprintf(char *out, size_t n, const char *fmt, va_list ap) {
  panic("Not implemented");
}

#endif
