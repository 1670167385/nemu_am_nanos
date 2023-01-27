#include <stdio.h>

int main() {
  struct timeval{
    long sec;
    long microsec;
  } t, lt;
  lt.sec = 0;
  while(1){
    _gettimeofday(&t, NULL);
    if((t.microsec == 500|| t.microsec == 0)&& t.sec != lt.sec){
      printf("%ld:%ld Hello world!\n", t.sec, t.microsec);
      lt.sec = t.sec;
    }
  }
  return 0;
}
