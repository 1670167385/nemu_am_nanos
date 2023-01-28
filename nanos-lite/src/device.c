#include <common.h>
#include "device.h"

#if defined(MULTIPROGRAM) && !defined(TIME_SHARING)
# define MULTIPROGRAM_YIELD() yield()
#else
# define MULTIPROGRAM_YIELD()
#endif

#define NAME(key) \
  [AM_KEY_##key] = #key,

static const char *keyname[256] __attribute__((used)) = {
  [AM_KEY_NONE] = "NONE",
  AM_KEYS(NAME)
};

size_t serial_write(const void *buf, size_t offset, size_t len) {
  for(int p=0; p < len; p++){
    putch(*(char*)(buf + p));
  }
  return len;
}

size_t events_read(void *buf, size_t offset, size_t len) {
  static AM_INPUT_KEYBRD_T ev;//kb_event ev;
  static char ev_str[25];
  int l;
  ev = io_read(AM_INPUT_KEYBRD);
  if (ev.keycode == AM_KEY_NONE) return 0;
  if (ev.keydown)
    sprintf(ev_str, "kd %s\n", keyname[ev.keycode]);
  else
    sprintf(ev_str, "ku %s\n", keyname[ev.keycode]);
  l = strlen(ev_str);
  if(l > len){
    ev_str[len-1] = '\n';
    ev_str[len] = 0;
    l = len;
  }
  strcpy(buf, ev_str);
  return l;
}

size_t dispinfo_read(void *buf, size_t offset, size_t len) {
  int w = io_read(AM_GPU_CONFIG).width;
  int h = io_read(AM_GPU_CONFIG).height;
  static char gpuinfo[30];

  sprintf(gpuinfo, "WIDTH : %d\nHEIGHT:%d",w, h);
  if(strlen(gpuinfo) > len) gpuinfo[len]=0;

  strcpy((char *)buf, gpuinfo);
  return 1;
}

size_t fb_write(const void *buf, size_t offset, size_t len) {
  return 0;
}

void init_device() {
  Log("Initializing devices...");
  ioe_init();
}

timeval *get_time(){
  static timeval t;
  t.microsec = io_read(AM_TIMER_UPTIME).us / 1000;
  t.sec = t.microsec / 1000;
  t.microsec = t.microsec % 1000;
  return &t;
}
