#include <am.h>
#include <klib.h>
#include <klib-macros.h>
#include <stdarg.h>

#if !defined(__ISA_NATIVE__) || defined(__NATIVE_USE_KLIB__)

int printf(const char *fmt, ...) {
  putch('1');
  va_list ap;
  int d, n = 0;
  int tmp_d,n_d;
  char *s;
 
  va_start(ap, fmt);
  while(*fmt) {
    while(*(char*)fmt != '%' && *(char*)fmt !='\0'){
      putch(*(char*)fmt);
      fmt++;
    }
    if(*fmt=='\0')break;
    switch(*(++fmt)) {
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
        d = va_arg(ap, int);
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
 
  va_start(ap, fmt);
  while(*fmt) {
    while(*(char*)fmt != '%' && *(char*)fmt !='\0'){
      out[p++] = *(char*)fmt;
      fmt++;
    }
    if(*fmt=='\0')break;
    switch(*(++fmt)) {
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
