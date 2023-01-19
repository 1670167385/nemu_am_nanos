#ifndef __CPU_CPU_H__
#define __CPU_CPU_H__
#endif
#include <common.h>

void cpu_exec(uint64_t n);

void ftrace_call(word_t pc, word_t npc);
void ftrace_ret(word_t pc, word_t npc);
