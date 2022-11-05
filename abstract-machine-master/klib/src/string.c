#include <klib.h>
#include <klib-macros.h>
#include <stdint.h>

#if !defined(__ISA_NATIVE__) || defined(__NATIVE_USE_KLIB__)

size_t strlen(const char *s) {
  size_t p = 0;
  while(s[p] != '\0')
    p++;
  return p;
}

char *strcpy(char *dst, const char *src) {
  size_t p = 0;
  while(src[p] != '\0') {
    dst[p] = src[p];
    p++;
  }
  return dst;
}

char *strncpy(char *dst, const char *src, size_t n) {
  size_t p = 0;
  while(src[p] != '\0' && p<n) {
    dst[p] = src[p];
    p++;
  }
  return dst;
} 

char *strcat(char *dst, const char *src) {
  size_t p = 0, s = strlen(dst);
  while(src[p] != '\0') dst[s++] = src[p++];
  return dst;
} 

int strcmp(const char *s1, const char *s2) {
  size_t p =0;
  while(s1[p]==s2[p]&&s1[p]!='\0')p++;
  return (s1[p] - s2[p]);
}

int strncmp(const char *s1, const char *s2, size_t n) {
  size_t p =0;
  while(s1[p]==s2[p]&&s1[p]!='\0'&&p<n)p++;
  return (s1[p-1] - s2[p-1]);
}

void *memset(void *s, int c, size_t n) {
  size_t p =0;
  while(p<n){
    *((char*)s + p) = c;
    p++;
  }
  return s;
}

void *memmove(void *dst, const void *src, size_t n) {
  if(dst < src || dst >= src + n){
    memcpy(dst, src, n);
  }
  else {
    while(n--){
      *((char*)dst + n) = *((char*)src + n);
    }
  }
  return dst;
}

void *memcpy(void *out, const void *in, size_t n) {
  size_t p=0;
  while(p<n)
  {
      *((char*)out + p) = *((char*)in + p);
      p++;
  }
  return out;
}

int memcmp(const void *s1, const void *s2, size_t n) {
  size_t p =0;
  while(*((char*)s1 + p) == *((char*)s2 + p)&& p<n)p++;
  return (*((char*)s1 + p) - *((char*)s2 + p));
}

#endif
