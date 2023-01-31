#ifndef __SYSCALL_H__
#define __SYSCALL_H__
enum {
  SYS_exit,
  SYS_yield,
  SYS_open,
  SYS_read,
  SYS_write,
  SYS_kill,
  SYS_getpid,
  SYS_close,
  SYS_lseek,
  SYS_brk,
  SYS_fstat,
  SYS_time,
  SYS_signal,
  SYS_execve,
  SYS_fork,
  SYS_link,
  SYS_unlink,
  SYS_wait,
  SYS_times,
  SYS_gettimeofday
};
/*
void sys_open(Context *c);
void sys_close(Context *c);
void sys_read(Context *c);
void sys_lseek(Context *c);
void sys_brk(Context *c);
void sys_write(Context *c);
void sys_yield(Context *c);
void sys_exit(Context *c);
void sys_gettimeofday(Context *c);
*/

#define NAVY_MK_NMSL

#ifdef NAVY_MK_NMSL
void do_syscall(Context *c);
#endif

#endif