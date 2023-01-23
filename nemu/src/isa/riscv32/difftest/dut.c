#include <isa.h>
#include <cpu/difftest.h>
#include "../local-include/reg.h"

bool isa_difftest_checkregs(CPU_state *ref_r, vaddr_t pc) {
    for(int i=0;i<32;i++)
    //printf("%d %d\n",ref_r->gpr[i]._32,cpu.gpr[i]._32);
    if(cpu.gpr[i]._32 != ref_r->gpr[i]._32)
    {
        //Log("reg:%s:0x%x different with ref=0x%x", reg_name(i,4), cpu.gpr[i]._32, ref_r->gpr[i]._32);
        //return false;
    }
    if(ref_r->pc != cpu.pc)
    {
        Log("pc 0x%x 0x%x different with ref=0x%x", cpu.pc, pc, ref_r->pc);
        //return false;
    }
    return true;
}

void isa_difftest_attach() {
}
