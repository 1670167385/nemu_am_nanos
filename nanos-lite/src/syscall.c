#include <common.h>
#include "syscall.h"

void do_syscall(Context *c) {
  uintptr_t a[4];
  a[0] = c->GPR1;

  switch (a[0]) {
    case 1: sys_yield(c); break;
    default: panic("Unhandled syscall ID = %d", a[0]);
  }
}


void sys_yield(Context *c){
  yield();
  c->GPR1 = 0;
}