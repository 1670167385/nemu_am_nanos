#include <am.h>
#include <nemu.h>

#define KEYDOWN_MASK 0x8000

void __am_input_keybrd(AM_INPUT_KEYBRD_T *kbd) {
  uint32_t key = inl(KBD_ADDR);
  int tkey=key;
  while(tkey){
    putch('0' + tkey%2);
    tkey/=2;
  }
  kbd->keydown = key & KEYDOWN_MASK;
  kbd->keycode = kbd->keydown? (key&(~KEYDOWN_MASK)) : AM_KEY_NONE;
}
