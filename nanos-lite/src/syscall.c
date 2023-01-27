#include <common.h>
#include "syscall.h"
#include "ramdisk1.h"
#include "fs.h"
#define CONFIG_STRACE

void sys_open(Context *c);
void sys_close(Context *c);
void sys_read(Context *c);
void sys_lseek(Context *c);
void sys_brk(Context *c);
void sys_write(Context *c);
void sys_yield(Context *c);
void sys_exit(Context *c);

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

    case SYS_brk:
#ifdef CONFIG_STRACE
      Log("syscall brk start with a0=0x%x", c->GPR2); 
      sys_brk(c); 
      Log("syscall brk end, ret=0x%x", c->GPRx); 
#else
      sys_brk(c); 
#endif
    break;

    case SYS_open:
#ifdef CONFIG_STRACE
      Log("syscall open start with fd=0x%x", c->GPR2); 
      sys_open(c); 
      Log("syscall open end, ret=0x%x", c->GPRx); 
#else
      sys_open(c); 
#endif
    break;

    case SYS_read:
#ifdef CONFIG_STRACE
      Log("syscall read start with fd=0x%x buf=0x%x count=0x%x", c->GPR2, c->GPR3, c->GPR4); 
      sys_read(c); 
      Log("syscall read end, ret=0x%x", c->GPRx); 
#else
      sys_read(c); 
#endif
    break;

    case SYS_write:
#ifdef CONFIG_STRACE
      Log("syscall write start with fd=0x%x buf=0x%x count=0x%x", c->GPR2, c->GPR3, c->GPR4); 
      sys_write(c); 
      Log("syscall write end, ret=0x%x", c->GPRx); 
#else
      sys_write(c); 
#endif
      break;

    case SYS_close:
#ifdef CONFIG_STRACE
      Log("syscall close start with fd=0x%x", c->GPR2); 
      sys_close(c); 
      Log("syscall close end, ret=0x%x", c->GPRx); 
#else
      sys_close(c); 
#endif
    break;

    case SYS_lseek:
#ifdef CONFIG_STRACE
      Log("syscall lseek start with fd=0x%x offset=0x%x whence=0x%x", c->GPR2, c->GPR3, c->GPR4); 
      sys_lseek(c); 
      Log("syscall lseek end, ret=0x%x", c->GPRx); 
#else
      sys_lseek(c); 
#endif
    break;

    default: panic("Unhandled syscall ID = %d", a[0]);
  }
}

void sys_open(Context *c)
{
  c->GPRx = fs_open((const char *)c->GPR2, c->GPR3, c->GPR4);
}

void sys_close(Context *c)
{
  c->GPRx = fs_close(c->GPR2);
}

void sys_read(Context *c)
{
  c->GPRx = fs_read(c->GPR2, (void *)c->GPR3, c->GPR4);
}

void sys_lseek(Context *c)
{
  c->GPRx = fs_lseek(c->GPR2, c->GPR3, c->GPR4);
}

void sys_brk(Context *c){
  c->GPRx = 0;
}

void sys_write(Context *c){                         //std
  c->GPRx = fs_write(c->GPR2, (const void *)c->GPR3, c->GPR4);
}

void sys_yield(Context *c){
  yield();
  c->GPRx = 0;
}

void sys_exit(Context *c){
  halt(c->GPR1);
}