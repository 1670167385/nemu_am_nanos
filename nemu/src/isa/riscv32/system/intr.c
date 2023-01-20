#include <isa.h>

word_t isa_raise_intr(word_t NO, vaddr_t epc) {
    /* Trigger an interrupt/exception with ``NO''.
    * Then return the address of the interrupt/exception vector.
    */
    cpu.mepc = epc;
    cpu.mcause = NO;
    cpu.pc = cpu.mtvec;
    return 0;
}

word_t isa_query_intr() {
    return INTR_EMPTY;
}
