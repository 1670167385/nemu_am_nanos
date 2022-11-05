def_EHelper(lui) {
  rtl_li(s, ddest, id_src1->imm);
}

def_EHelper(add) {
  rtl_add(s, ddest, dsrc1, dsrc2);
}

def_EHelper(sub) {
  rtl_sub(s, ddest, dsrc1, dsrc2);
}

def_EHelper(slt) {
  if(*dsrc1 < *dsrc2)
    rtl_li(s, ddest, 1);
  else
    rtl_li(s, ddest, 0);
}

def_EHelper(sltu) {
  if((uint32_t)*dsrc1 < (uint32_t)*dsrc2)
    rtl_li(s, ddest, 1);
  else
    rtl_li(s, ddest, 0);
}

def_EHelper(sll) {
  rtl_sll(s, ddest, dsrc1, dsrc2);
}

def_EHelper(and) {
  rtl_and(s, ddest, dsrc1, dsrc2);
}

def_EHelper(xor) {
  rtl_xor(s, ddest, dsrc1, dsrc2);
}

def_EHelper(or) {
  rtl_or(s, ddest, dsrc1, dsrc2);
}

def_EHelper(mul) {
  rtl_mulu_lo(s, ddest, dsrc1, dsrc2);
}

def_EHelper(div) {
  rtl_divs_q(s, ddest, dsrc1, dsrc2);
}

def_EHelper(addi) {
  rtl_addi(s, ddest, dsrc1, id_src2->simm);
}

def_EHelper(andi) {
  rtl_andi(s, ddest, dsrc1, id_src2->simm);
}

def_EHelper(xori) {
  rtl_xori(s, ddest, dsrc1, id_src2->simm);
}

def_EHelper(srai) {
  rtl_srai(s, ddest, dsrc1, (id_src2->imm & 0x3f));
}

def_EHelper(srli) {
  rtl_srli(s, ddest, dsrc1, (id_src2->imm & 0x3f));
}

def_EHelper(slli) {
  rtl_slli(s, ddest, dsrc1, (id_src2->imm & 0x3f));
}

def_EHelper(auipc) {
  rtl_addi(s, ddest, &s->pc, id_src1->simm);
}

def_EHelper(jal) {
  rtl_mv(s, ddest, &s->snpc);
  rtl_addi(s, &s->dnpc, &s->pc, id_src1->simm);
}

def_EHelper(jalr) {
  rtl_addi(s, &s->dnpc, dsrc1, id_src2->simm);
  rtl_mv(s, ddest, &s->dnpc);
}

def_EHelper(beq) {
  if(*dsrc1 == *dsrc2)
    rtl_addi(s, &s->dnpc, &s->pc, id_dest->simm);
}

def_EHelper(sltiu) {
  if(*dsrc1 < id_src2->imm)
    rtl_li(s, ddest, 1);
  else
    rtl_li(s, ddest, 0);
}

def_EHelper(slti) {
  if(*dsrc1 < id_src2->simm)
    rtl_li(s, ddest, 1);
  else
    rtl_li(s, ddest, 0);
}

def_EHelper(bne) {
  if(*dsrc1 != *dsrc2)
    rtl_addi(s, &s->dnpc, &s->pc, id_dest->simm);
}

def_EHelper(bge) {
  if(*dsrc1 >= *dsrc2)
    rtl_addi(s, &s->dnpc, &s->pc, id_dest->simm);
}