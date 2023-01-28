#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

static int evtdev = -1;
static int fbdev = -1;
static int screen_w = 0, screen_h = 0;
static int kb_dev;
static int gpu_proc;

typedef struct{
    long sec;
    long microsec;
}timeval;

uint32_t NDL_GetTicks() {
  timeval t;
  _gettimeofday(&t, NULL);
  return t.sec*1000+t.microsec;
}

int NDL_PollEvent(char *buf, int len) {
  return read(kb_dev, (void *)buf, len);
}

void NDL_OpenCanvas(int *w, int *h) {
  int wholew, wholeh;
  char gpu_info[40];
  read(gpu_proc, gpu_info, sizeof(gpu_info) - 1);
  sscanf(gpu_info,"WIDTH :%d\nHEIGHT:%d",&wholew, &wholeh);
  printf("whole : w=%d h=%d\n",wholew, wholeh);
  if(*w == 0 || *w > wholew) *w = wholew;
  if(*h == 0 || *h > wholeh) *h = wholeh;
  printf("canvas : w=%d h=%d\n",*w, *h);
  screen_h = *h; screen_w = *w;

  if (getenv("NWM_APP")) {
    int fbctl = 4;
    fbdev = 5;
    screen_w = *w; screen_h = *h;
    char buf[64];
    int len = sprintf(buf, "%d %d", screen_w, screen_h);
    // let NWM resize the window and create the frame buffer
    write(fbctl, buf, len);
    while (1) {
      // 3 = evtdev
      int nread = read(3, buf, sizeof(buf) - 1);
      if (nread <= 0) continue;
      buf[nread] = '\0';
      if (strcmp(buf, "mmap ok") == 0) break;
    }
    close(fbctl);
  }
}

void NDL_DrawRect(uint32_t *pixels, int x, int y, int w, int h) {
  if(x+w > screen_w) printf("overwidth!\n");
  if(y+h > screen_h) printf("overheight!\n");

  int offset = y*screen_w + x;
  for(int i=0;i<h;i++){
    lseek(fbdev, i*w*4, SEEK_SET);
    write(fbdev, (void *)(pixels+i*w), 4*w);
  }
}

void NDL_OpenAudio(int freq, int channels, int samples) {
}

void NDL_CloseAudio() {
}

int NDL_PlayAudio(void *buf, int len) {
  return 0;
}

int NDL_QueryAudio() {
  return 0;
}

int NDL_Init(uint32_t flags) {
  if (getenv("NWM_APP")) {
    evtdev = 3;
  }
  kb_dev = open("/dev/events");
  gpu_proc = open("/proc/dispinfo");
  fbdev = open("/dev/fb");
  return 0;
}

void NDL_Quit() {
}
