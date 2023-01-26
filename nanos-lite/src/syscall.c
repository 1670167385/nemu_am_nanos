#include <common.h>
#include "syscall.h"

void do_syscall(Context *c) {
  uintptr_t a[4];
  a[0] = c->GPR1;

  switch (a[0]) {
    case 0: //exit
#ifdef CONFIG_STRACE 
      Log("syscall exit start with a0=0x%x", c->GPR1); 
      sys_exit(c);
      Log("syscall exit end"); //, ret=0x%x", c->GPRx)); 
#else
      sys_exit(c);
#endif
      break;
    case 1: //yield
#ifdef CONFIG_STRACE
      Log("syscall yield start"); 
      sys_yield(c); 
      Log("syscall yield end, ret=0x%x", c->GPRx); 
#else
      sys_yield(c); 
#endif
      break;


    default: panic("Unhandled syscall ID = %d", a[0]);
  }
}


void sys_yield(Context *c){
  yield();
  c->GPRx = 0;
}

void sys_exit(Context *c){
  halt(c->GPR1);
}