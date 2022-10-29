#include "../local-include/reg.h"
#include <cpu/ifetch.h>
#include <isa-all-instr.h>

def_all_THelper();

static uint32_t get_instr(Decode *s) {
  return s->isa.instr.val;
}

// decode operand helper
#define def_DopHelper(name) \
  void concat(decode_op_, name) (Decode *s, Operand *op, word_t val, bool flag)

static def_DopHelper(i) {
  op->imm = val;
}

static def_DopHelper(r) {
  bool is_write = flag;
  static word_t zero_null = 0;
  op->preg = (is_write && val == 0) ? &zero_null : &gpr(val);
}

static def_DHelper(I) {
  decode_op_r(s, id_src1, s->isa.instr.i.rs1, false);
  decode_op_i(s, id_src2, s->isa.instr.i.simm11_0, false);
  decode_op_r(s, id_dest, s->isa.instr.i.rd, true);
}

static def_DHelper(R) {
  decode_op_r(s, id_src1, s->isa.instr.r.rs1, false);
  decode_op_r(s, id_src2, s->isa.instr.r.rs2, false);
  decode_op_r(s, id_dest, s->isa.instr.r.rd, true);
}

static def_DHelper(U) {
  decode_op_i(s, id_src1, s->isa.instr.u.imm31_12 << 12, true);
  decode_op_r(s, id_dest, s->isa.instr.u.rd, true);
}

static def_DHelper(S) {
  decode_op_r(s, id_src1, s->isa.instr.s.rs1, false);
  sword_t simm = (s->isa.instr.s.simm11_5 << 5) | s->isa.instr.s.imm4_0;
  decode_op_i(s, id_src2, simm, false);
  decode_op_r(s, id_dest, s->isa.instr.s.rs2, false);
}

static def_DHelper(J) {
  decode_op_r(s, id_dest, s->isa.instr.j.rd, true);
  sword_t simm = (s->isa.instr.j.simm20 << 20) |  (s->isa.instr.j.imm19_12 << 12)
               | (s->isa.instr.j.imm11 << 11) | (s->isa.instr.j.imm10_1 << 1);
  decode_op_i(s, id_src1, simm, false);
  /*
  Log("20:0x%x 19_12:0x%x 11:0x%x 10:1 0x%x\n",s->isa.instr.j.simm20 ,
  s->isa.instr.j.imm19_12 , s->isa.instr.j.imm11 , s->isa.instr.j.imm10_1 );
  */
}

static def_DHelper(B) {
  decode_op_r(s, id_src1, s->isa.instr.b.rs1, false);
  sword_t simm = ((s->isa.instr.b.simm12 << 12) |  (s->isa.instr.b.imm11 << 11)
               | (s->isa.instr.b.imm10_5 << 5) | (s->isa.instr.b.imm4_1 << 1));
  decode_op_i(s, id_dest, simm, false);
  decode_op_r(s, id_src2, s->isa.instr.b.rs2, false);
}

def_THelper(load) {
  def_INSTR_TAB("??????? ????? ????? 010 ????? ????? ??", lw);
  return EXEC_ID_inv;
}

def_THelper(store) {
  def_INSTR_TAB("??????? ????? ????? 010 ????? ????? ??", sw);
  return EXEC_ID_inv;
}

def_THelper(main) {
  def_INSTR_IDTAB("??????? ????? ????? ??? ????? 00000 11", I     , load);
  def_INSTR_IDTAB("??????? ????? ????? ??? ????? 01000 11", S     , store);
  def_INSTR_IDTAB("??????? ????? ????? ??? ????? 01101 11", U     , lui);
  def_INSTR_IDTAB("??????? ????? ????? 000 ????? 00100 11", I     , addi);
  def_INSTR_IDTAB("??????? ????? ????? ??? ????? 00101 11", U     , auipc);
  def_INSTR_IDTAB("??????? ????? ????? ??? ????? 11011 11", J     , jal);
  def_INSTR_IDTAB("??????? ????? ????? 000 ????? 11001 11", I     , jalr);
  def_INSTR_IDTAB("??????? ????? ????? 000 ????? 11000 11", B     , beq);
  def_INSTR_IDTAB("??????? ????? ????? 011 ????? 00100 11", I     , sltiu);
  def_INSTR_IDTAB("??????? ????? ????? 010 ????? 00100 11", I     , slti);
  def_INSTR_IDTAB("??????? ????? ????? 001 ????? 11000 11", B     , bne);
  def_INSTR_IDTAB("0000000 ????? ????? 000 ????? 01100 11", R     , add);
  def_INSTR_IDTAB("0100000 ????? ????? 000 ????? 01100 11", R     , sub);
  def_INSTR_IDTAB("0000000 ????? ????? 011 ????? 01100 11", R     , sltu);
  def_INSTR_IDTAB("0000000 ????? ????? 010 ????? 01100 11", R     , slt);












  def_INSTR_TAB  ("??????? ????? ????? ??? ????? 11010 11",         nemu_trap);
  return table_inv(s);
};

int isa_fetch_decode(Decode *s) {
  s->isa.instr.val = instr_fetch(&s->snpc, 4);
  int idx = table_main(s);
  return idx;
}
