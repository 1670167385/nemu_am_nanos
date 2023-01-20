def_EHelper(inv) {
  rtl_hostcall(s, HOSTCALL_INV, NULL, NULL, NULL, 0);
}

def_EHelper(nemu_trap) {
  rtl_hostcall(s, HOSTCALL_EXIT, NULL, &gpr(10), NULL, 0); // gpr(10) is $a0
}

def_EHelper(ecall) {
  s->dnpc = isa_raise_intr(1, s->pc);
}

def_EHelper(csrrw) {

  switch(id_src2->simm){
    case 0x305: //mtvec
      rtl_mv(s, s0, &cpu.mtvec); 
      rtl_mv(s, &cpu.mtvec, dsrc1); 
      break;
    case 0x300: //mstatus
      rtl_mv(s, s0, &cpu.mstatus); 
      rtl_mv(s, &cpu.mstatus, dsrc1); 
      break;
    case 0x341: //mtvec
      rtl_mv(s, s0, &cpu.mepc); 
      rtl_mv(s, &cpu.mepc, dsrc1); 
      break;
    case 0x342: //mcause
      rtl_mv(s, s0, &cpu.mcause); 
      rtl_mv(s, &cpu.mcause, dsrc1);
      break;
  }

  rtl_mv(s, ddest, s0);
}

def_EHelper(csrrs) {

  switch(id_src2->simm){
    case 0x305: //mtvec
      rtl_mv(s, s0, &cpu.mtvec); 
      rtl_or(s, &cpu.mtvec, s0, dsrc1); 
      break;
    case 0x300: //mstatus
      rtl_mv(s, s0, &cpu.mstatus); 
      rtl_or(s, &cpu.mstatus, s0, dsrc1); 
      break;
    case 0x341: //mtvec
      rtl_mv(s, s0, &cpu.mepc); 
      rtl_or(s, &cpu.mepc, s0, dsrc1); 
      break;
    case 0x342: //mcause
      rtl_mv(s, s0, &cpu.mcause); 
      rtl_or(s, &cpu.mcause, s0, dsrc1); 
      break;
  }

  rtl_mv(s, ddest, s0);
}