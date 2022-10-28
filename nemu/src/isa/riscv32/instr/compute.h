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
