extern const rtlreg_t rzero;
extern rtlreg_t tmp_reg[4];
enum {
  RELOP_FALSE = 0 | 0 | 0 | 0,
  RELOP_TRUE = 0 | 0 | 0 | 1,
  RELOP_EQ = 0 | 0 | 2 | 0,
  RELOP_NE = 0 | 0 | 2 | 1,

  RELOP_LT = 0 | 4 | 0 | 0,
  RELOP_LE = 0 | 4 | 2 | 0,
  RELOP_GT = 0 | 4 | 2 | 1,
  RELOP_GE = 0 | 4 | 0 | 1,

  RELOP_LTU = 8 | 0 | 0 | 0,
  RELOP_LEU = 8 | 0 | 2 | 0,
  RELOP_GTU = 8 | 0 | 2 | 1,
  RELOP_GEU = 8 | 0 | 0 | 1,
};

enum {
  HOSTCALL_EXIT,
  HOSTCALL_INV,
  HOSTCALL_PIO,
};

void rtl_hostcall(Decode *s, uint32_t id, rtlreg_t *dest, const rtlreg_t *src1, const rtlreg_t *src2, word_t imm)
                                     ;

static inline _Bool interpret_relop(uint32_t relop, const rtlreg_t src1, 
					const rtlreg_t src2) {
  switch (relop) {
    case RELOP_FALSE: return 0;
    case RELOP_TRUE: return 1;
    case RELOP_EQ: return src1 == src2;
    case RELOP_NE: return src1 != src2;
    case RELOP_LT: return (sword_t)src1 < (sword_t)src2;
    case RELOP_LE: return (sword_t)src1 <= (sword_t)src2;
    case RELOP_GT: return (sword_t)src1 > (sword_t)src2;
    case RELOP_GE: return (sword_t)src1 >= (sword_t)src2;
    case RELOP_LTU: return src1 < src2;
    case RELOP_LEU: return src1 <= src2;
    case RELOP_GTU: return src1 > src2;
    case RELOP_GEU: return src1 >= src2;
    default: do { if (!(0)) { (fflush(stdout), 
    fprintf(stderr, "\33[1;31m" "unsupport relop = %d" "\33[0m" "\n", relop)); 
    extern void assert_fail_msg(); assert_fail_msg(); ((void) sizeof ((00"0"; } } while (0);
  }
}
static inline void rtl_add
(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) 
{ *dest = ((*src1) + (*src2)); } 

static inline void rtl_addi
(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const sword_t imm) 
{ *dest = ((*src1) + (imm)); }

static inline void rtl_sub
(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) 
{ *dest = ((*src1) - (*src2)); } 

static inline void rtl_subi
(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const sword_t imm)
{ *dest = ((*src1) - (imm)); }

static inline void rtl_and(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) { *dest = ((*src1) & (*src2)); } static inline void rtl_andi(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const sword_t imm) { *dest = ((*src1) & (imm)); }
static inline void rtl_or(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) { *dest = ((*src1) | (*src2)); } static inline void rtl_ori(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const sword_t imm) { *dest = ((*src1) | (imm)); }
static inline void rtl_xor(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) { *dest = ((*src1) ^ (*src2)); } static inline void rtl_xori(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const sword_t imm) { *dest = ((*src1) ^ (imm)); }
static inline void rtl_sll(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) { *dest = ((*src1) << ((*src2) & 0x1f)); } static inline void rtl_slli(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const sword_t imm) { *dest = ((*src1) << ((imm) & 0x1f)); }
static inline void rtl_srl(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) { *dest = ((*src1) >> ((*src2) & 0x1f)); } static inline void rtl_srli(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const sword_t imm) { *dest = ((*src1) >> ((imm) & 0x1f)); }
static inline void rtl_sra(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) { *dest = ((sword_t)(*src1) >> ((*src2) & 0x1f)); } static inline void rtl_srai(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const sword_t imm) { *dest = ((sword_t)(*src1) >> ((imm) & 0x1f)); }
static inline void rtl_setrelop(Decode *s, uint32_t relop, rtlreg_t *dest, const rtlreg_t *src1, const rtlreg_t *src2)
{*dest = interpret_relop(relop, *src1, *src2);}

static inline void rtl_setrelopi(Decode *s, uint32_t relop, rtlreg_t *dest, const rtlreg_t *src1, sword_t imm)
{*dest = interpret_relop(relop, *src1, imm);}



static inline void rtl_mulu_lo(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) { *dest = ((*src1) * (*src2)); }
static inline void rtl_mulu_hi(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) { *dest = (((uint64_t)(*src1) * (uint64_t)(*src2)) >> 32); }
static inline void rtl_muls_hi(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) { *dest = (((int64_t)(sword_t)(*src1) * (int64_t)(sword_t)(*src2)) >> 32); }
static inline void rtl_divu_q
(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) 
{ *dest = ((*src1) / (*src2)); }
static inline void rtl_divu_r
(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) 
{ *dest = ((*src1) % (*src2)); }
static inline void rtl_divs_q
(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) 
{ *dest = ((sword_t)(*src1) / (sword_t)(*src2)); }
static inline void rtl_divs_r
(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, const rtlreg_t* src2) 
{ *dest = ((sword_t)(*src1) % (sword_t)(*src2)); }
static inline void rtl_div64u_q
(Decode *s, rtlreg_t* dest, const rtlreg_t* src1_hi, const rtlreg_t* src1_lo, const rtlreg_t* src2)
{
  uint64_t dividend = ((uint64_t)(*src1_hi) << 32) | (*src1_lo);
  uint32_t divisor = (*src2);
  *dest = dividend / divisor;
}

static inline void rtl_div64u_r(Decode *s, rtlreg_t* dest, const rtlreg_t* src1_hi, const rtlreg_t* src1_lo, const rtlreg_t* src2)
{
  uint64_t dividend = ((uint64_t)(*src1_hi) << 32) | (*src1_lo);
  uint32_t divisor = (*src2);
  *dest = dividend % divisor;
}

static inline void rtl_div64s_q(Decode *s, rtlreg_t* dest, const rtlreg_t* src1_hi, const rtlreg_t* src1_lo, const rtlreg_t* src2)
{
  int64_t dividend = ((uint64_t)(*src1_hi) << 32) | (*src1_lo);
  int32_t divisor = (*src2);
  *dest = dividend / divisor;
}

static inline void rtl_div64s_r(Decode *s, rtlreg_t* dest, const rtlreg_t* src1_hi, const rtlreg_t* src1_lo, const rtlreg_t* src2)
{
  int64_t dividend = ((uint64_t)(*src1_hi) << 32) | (*src1_lo);
  int32_t divisor = (*src2);
  *dest = dividend % divisor;
}

static inline void rtl_lm(Decode *s, rtlreg_t *dest, const rtlreg_t* addr, word_t offset, int len) {
  *dest = vaddr_read(*addr + offset, len);
}

static inline void rtl_sm(Decode *s, const rtlreg_t *src1, const rtlreg_t* addr, word_t offset, int len) {
  vaddr_write(*addr + offset, len, *src1);
}

static inline void rtl_lms(Decode *s, rtlreg_t *dest, const rtlreg_t* addr, word_t offset, int len) {
  word_t val = vaddr_read(*addr + offset, len);
  switch (len) {
    case 4: *dest = (sword_t)(int32_t)val; return;
    case 1: *dest = (sword_t)( int8_t)val; return;
    case 2: *dest = (sword_t)(int16_t)val; return;
    ;
    default: 
   
                                             ;
  }
}

static inline void rtl_host_lm(Decode *s, rtlreg_t* dest, const void *addr, int len) {
  switch (len) {
    case 4: *dest = *(uint32_t *)addr; return;
    case 1: *dest = *( uint8_t *)addr; return;
    case 2: *dest = *(uint16_t *)addr; return;
    ;
    default: 
                                     ;
  }
}

static inline void rtl_host_sm(Decode *s, void *addr, const rtlreg_t *src1, int len) {
  switch (len) {
    case 4: *(uint32_t *)addr = *src1; return;
    case 1: *( uint8_t *)addr = *src1; return;
    case 2: *(uint16_t *)addr = *src1; return;
    ;
    default: 
   
                                             ;
  }
}



static inline void rtl_j(Decode *s, vaddr_t target) {
  s->dnpc = target;
}

static inline void rtl_jr(Decode *s, rtlreg_t *target) {
  s->dnpc = *target;
}

static inline void rtl_jrelop(Decode *s, uint32_t relop, const rtlreg_t *src1, const rtlreg_t *src2, vaddr_t target)
                                                                {
  
 _Bool is_jmp = interpret_relop(relop, *src1, *src2);
  rtl_j(s, (is_jmp ? target : s->snpc));
}
static inline void rtl_li(Decode *s, rtlreg_t* dest, const rtlreg_t imm) {
  rtl_addi(s, dest, (&rzero), imm);
}

static inline void rtl_mv(Decode *s, rtlreg_t* dest, const rtlreg_t *src1) {
  rtl_addi(s, dest, src1, 0);
}

static inline void rtl_not(Decode *s, rtlreg_t *dest, const rtlreg_t* src1) {
do 
  { if (!(0)) 
  { (fflush(stdout), fprintf(
 stderr
 , "\33[1;31m" "please implement me" "\33[0m" "\n")); extern void assert_fail_msg(); assert_fail_msg(); 
 ((void) sizeof ((
 0
 0
 "0"
 ; } } while (0);
}

static inline void rtl_neg(Decode *s, rtlreg_t *dest, const rtlreg_t* src1) {

  do { if (!(0)) { (fflush(
 stdout
 ), fprintf(
 stderr
 , "\33[1;31m" "please implement me" "\33[0m" "\n")); extern void assert_fail_msg(); assert_fail_msg(); 
 ((void) sizeof ((
 0
 0
 "0"
 ; } } while (0);
}

static inline void rtl_sext(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, int width) {

  do { if (!(0)) { (fflush(
 stdout
 ), fprintf(
 stderr
 , "\33[1;31m" "please implement me" "\33[0m" "\n")); extern void assert_fail_msg(); assert_fail_msg(); 
 ((void) sizeof ((
 0
 0
 "0"
 ; } } while (0);
}

static inline void rtl_zext(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, int width) {

  do { if (!(0)) { (fflush(
 stdout
 ), fprintf(
 stderr
 , "\33[1;31m" "please implement me" "\33[0m" "\n")); extern void assert_fail_msg(); assert_fail_msg(); 
 ((void) sizeof ((
 0
 0
 "0"
 ; } } while (0);
}

static inline void rtl_msb(Decode *s, rtlreg_t* dest, const rtlreg_t* src1, int width) {

  do { if (!(0)) { (fflush(
 stdout
 ), fprintf(
 stderr
 , "\33[1;31m" "please implement me" "\33[0m" "\n")); extern void assert_fail_msg(); assert_fail_msg(); 
 ((void) sizeof ((
 0
 0
 "0"
 ; } } while (0);
}



enum { EXEC_ID_lui, EXEC_ID_lw, EXEC_ID_sw, EXEC_ID_inv, EXEC_ID_nemu_trap, TOTAL_INSTR };

static inline int table_lui (Decode *s) 
{ 
	return EXEC_ID_lui; 
} 



static inline int table_lw (Decode *s) 
{ 
	return EXEC_ID_lw; 
} 

static inline int table_sw (Decode *s) 
{ 
	return EXEC_ID_sw; 
} 

static inline int table_inv (Decode *s) 
{ 
	return EXEC_ID_inv; 
} 

static inline int table_nemu_trap (Decode *s) 
{ 
	return EXEC_ID_nemu_trap; 

};





static uint32_t get_instr(Decode *s) {
  return s->isa.instr.val;
}





static void decode_op_i (Decode *s, Operand *op, word_t val, _Bool flag)
{
  op->imm = val;
}

static void decode_op_r (Decode *s, Operand *op, word_t val, _Bool flag) {
 _Bool is_write = flag;
  static word_t zero_null = 0;
  op->preg = (is_write && val == 0) ? &zero_null : &(cpu.gpr[check_reg_idx(val)]._32);
}

static void decode_I (Decode *s, int width) {
  decode_op_r(s, (&s->src1), s->isa.instr.i.rs1, 0);
  decode_op_i(s, (&s->src2), s->isa.instr.i.simm11_0, 0);
  decode_op_r(s, (&s->dest), s->isa.instr.i.rd, 1);
}

static void decode_U (Decode *s, int width) 
{
  decode_op_i(s, (&s->src1), s->isa.instr.u.imm31_12 << 12, 1);
  decode_op_r(s, (&s->dest), s->isa.instr.u.rd, 1);
}

static void decode_S (Decode *s, int width) {
  decode_op_r(s, (&s->src1), s->isa.instr.s.rs1,0);
  sword_t simm = (s->isa.instr.s.simm11_5 << 5) | s->isa.instr.s.imm4_0;
  decode_op_i(s, (&s->src2), simm, 0);
  decode_op_r(s, (&s->dest), s->isa.instr.s.rs2, 0);
}

static inline int table_load (Decode *s) {
  do { 
  uint32_t key, mask, shift; 
  pattern_decode("??????? ????? ????? 010 ????? ????? ??", 
		  (sizeof("??????? ????? ????? 010 ????? ????? ??") - 1), 
		  &key, &mask, &shift); 
  
	  if (((get_instr(s) >> shift) & mask) == key) 
	  { 
	  		decode_empty(s, 0); 
	  		return table_lw(s); 
	  } 
  } while (0);
  
  return EXEC_ID_inv;
}

static inline int table_store (Decode *s) 
{
  do { uint32_t key, mask, shift; pattern_decode("??????? ????? ????? 010 ????? ????? ??", (sizeof("??????? ????? ????? 010 ????? ????? ??") - 1), &key, &mask, &shift); if (((get_instr(s) >> shift) & mask) == key) { { decode_empty(s, 0); return table_sw(s); }; } } while (0);
  return EXEC_ID_inv;
}

static inline int table_main (Decode *s) {
  do { uint32_t key, mask, shift; pattern_decode("??????? ????? ????? ??? ????? 00000 11", (sizeof("??????? ????? ????? ??? ????? 00000 11") - 1), &key, &mask, &shift); if (((get_instr(s) >> shift) & mask) == key) { { decode_I(s, 0); return table_load(s); }; } } while (0);
  do { uint32_t key, mask, shift; pattern_decode("??????? ????? ????? ??? ????? 01000 11", (sizeof("??????? ????? ????? ??? ????? 01000 11") - 1), &key, &mask, &shift); if (((get_instr(s) >> shift) & mask) == key) { { decode_S(s, 0); return table_store(s); }; } } while (0);
  do { uint32_t key, mask, shift; pattern_decode("??????? ????? ????? ??? ????? 01101 11", (sizeof("??????? ????? ????? ??? ????? 01101 11") - 1), &key, &mask, &shift); if (((get_instr(s) >> shift) & mask) == key) { { decode_U(s, 0); return table_lui(s); }; } } while (0);
  do { uint32_t key, mask, shift; pattern_decode("??????? ????? ????? ??? ????? 11010 11", (sizeof("??????? ????? ????? ??? ????? 11010 11") - 1), &key, &mask, &shift); if (((get_instr(s) >> shift) & mask) == key) { { decode_empty(s, 0); return table_nemu_trap(s); }; } } while (0);
  return table_inv(s);
};

int isa_fetch_decode(Decode *s) {
  s->isa.instr.val = instr_fetch(&s->snpc, 4);
  int idx = table_main(s);
  return idx;
}
