#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <NDL.h>
#include <BMP.h>
#include <SDL.h>
#include <fixedptc.h>

int main() {
/*
  fixedpt a = fixedpt_rconst(1.2);
  fixedpt b = fixedpt_fromint(10);


  a = fixedpt_rconst(-1.3);
  printf("-1.3: flo:%d cei:%d\n", fixedpt_floor(a), fixedpt_ceil(a));
  
  a = fixedpt_rconst(-0.2);
  printf("-0.2: flo:%d cei:%d\n", fixedpt_floor(a), fixedpt_ceil(a));

  a = fixedpt_rconst(1.3);
  printf("1.3: flo:%d cei:%d\n", fixedpt_floor(a), fixedpt_ceil(a));
  
  a = fixedpt_rconst(0.2);
  printf("0.2: flo:%d cei:%d\n", fixedpt_floor(a), fixedpt_ceil(a));*/

  NDL_Init(0);
  int w, h;
  void *bmp = BMP_Load("/share/pictures/projectn.bmp", &w, &h);
  assert(bmp);
  NDL_OpenCanvas(&w, &h);
  NDL_DrawRect(bmp, 0, 0, w, h);
  free(bmp);
  NDL_Quit();
  printf("Test ends! Spinning...\n");
  while (1);
  return 0;
}
