#include <common.h>
#include "syscall.h"
//#define CONFIG_STRACE

void do_syscall(Context *c) {
  uintptr_t a[4];
  a[0] = c->GPR1;

  switch (a[0]) {
    case SYS_exit:
#ifdef CONFIG_STRACE 
      Log("syscall exit start with a0=0x%x", c->GPR2); 
      sys_exit(c);
      Log("syscall exit end"); //, ret=0x%x", c->GPRx)); 
#else
      sys_exit(c);
#endif
      break;
    
    case SYS_yield: 
#ifdef CONFIG_STRACE
      Log("syscall yield start"); 
      sys_yield(c); 
      Log("syscall yield end, ret=0x%x", c->GPRx); 
#else
      sys_yield(c); 
#endif
      break;

    case SYS_write:
#ifdef CONFIG_STRACE
      Log("syscall write start with a0=0x%x a1=0x%x a2=0x%x", c->GPR2, c->GPR3, c->GPR4); 
      sys_write(c); 
      Log("syscall write end, ret=0x%x", c->GPRx); 
#else
      sys_write(c); 
#endif
      break;

    default: panic("Unhandled syscall ID = %d", a[0]);
  }
}

void sys_write(Context *c){
  if(c->GPR2==1 || c->GPR2==2){   //out/err
    for(int p=0; p < c->GPR4; p++){
      putch(*(char*)(c->GPR3 + p));
    }
    c->GPRx = c->GPR4;            //return count;
  }
}

void sys_yield(Context *c){
  yield();
  c->GPRx = 0;
}

void sys_exit(Context *c){
  halt(c->GPR1);
}