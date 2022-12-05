#include <am.h>
#include <nemu.h>

#define SYNC_ADDR (VGACTL_ADDR + 4)



void __am_gpu_init() {
  int i;
  uint32_t hei_wei = inl(VGACTL_ADDR);
  uint32_t w = hei_wei >> 16;  
  uint32_t h = hei_wei & 0xffff;  

  uint32_t *fb = (uint32_t *)(uintptr_t)FB_ADDR;
  for (i = 0; i < w * h; i ++) fb[i] = i;
  outl(SYNC_ADDR, 1);
}

void __am_gpu_config(AM_GPU_CONFIG_T *cfg) {
  static AM_GPU_CONFIG_T config;
  uint32_t hei_wei = inl(VGACTL_ADDR);
  config.width = (uint32_t)hei_wei >> 16;  
  config.height = (uint32_t)hei_wei & 0xffff;  
  config.present = true;
  config.has_accel = false;
  config.vmemsz = 0;
  cfg=&config;
}

void __am_gpu_fbdraw(AM_GPU_FBDRAW_T *ctl) {
  static AM_GPU_CONFIG_T config;

  if (ctl->sync) {
    outl(SYNC_ADDR, 1);
  }
  else{

  uint32_t *fb = NULL;
    //putch('0' + ctl->y+ctl->h <= config.height && ctl->x+ctl->w<= config.width);
    for(int i=0;i<ctl->h;i++)
    {
      fb = (uint32_t *)(uintptr_t)(FB_ADDR+(ctl->y+i)*config.width+ctl->x);
      for(int j=0;j<ctl->w;j++,fb++){
          *fb = *(uint32_t*)ctl->pixels+i*ctl->w+j;
      }
    }
  }
}

void __am_gpu_status(AM_GPU_STATUS_T *status) {
  status->ready = true;
}
