def_EHelper(lui) {
  rtl_li(s, ddest, id_src1->imm);
}

def_EHelper(addi) {
  rtl_addi(s, ddest, dsrc1, id_src2->simm);
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