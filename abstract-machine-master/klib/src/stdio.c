#include <am.h>
#include <klib.h>
#include <klib-macros.h>
#include <stdarg.h>

#if !defined(__ISA_NATIVE__) || defined(__NATIVE_USE_KLIB__)

int printf(const char *fmt, ...) {
  panic("Not implemented");
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
    while(*(char*)fmt != '%'){
      out[p++] = *(char*)fmt;
      fmt++;
    }
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
  return n;
}

int snprintf(char *out, size_t n, const char *fmt, ...) {
  panic("Not implemented");
}

int vsnprintf(char *out, size_t n, const char *fmt, va_list ap) {
  panic("Not implemented");
}

#endif
