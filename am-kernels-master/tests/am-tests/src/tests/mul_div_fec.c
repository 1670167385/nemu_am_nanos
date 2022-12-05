
#include <amtest.h>

void fex()
{
    printf("\033[0;0H");
  for (int y = 0; y < 25; y += 4) {
    //draw_rect(&screen[y][8], xpad, ypad + y, W, 1);
    for (int x = 0; x < 256; x += 2) {
      const char *list = "o. *O0@#";
      char c = list[(y*256+x)%8];
      putch(c);
    }
    putch('\n');
  }
}