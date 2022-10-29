#include <isa.h>
#include <memory/paddr.h>

// this is not consistent with uint8_t
// but it is ok since we do not access the array directly
static const uint32_t img [] = {
  0x01010093,  // addi ra,sp,16
  0x00008463,  //beqz	a0,80000018 <check+0x8>  
  0x00009117,  //auipc	sp,0x9
  0xffc10113,  //addi	sp,sp,-4 # 80009000 <_end>
  0x00c000ef,  //jal	ra,80000018 <_trm_init>
  0x01010093,  // addi ra,sp,16
  0x800002b7,  // lui t0,0x80000
  0x0002a023,  // sw  zero,0(t0)
  0x0002a503,  // lw  a0,0(t0)
  0x0000006b,  // nemu_trap
};

static void restart() {
  /* Set the initial program counter. */
  cpu.pc = RESET_VECTOR;

  /* The zero register is always 0. */
  cpu.gpr[0]._32 = 0;
}

void init_isa() {
  /* Load built-in image. */
  memcpy(guest_to_host(RESET_VECTOR), img, sizeof(img));

  /* Initialize this virtual computer system. */
  restart();
}
