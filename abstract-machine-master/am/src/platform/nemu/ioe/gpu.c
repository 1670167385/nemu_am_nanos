#include <am.h>
#include <nemu.h>

#define SYNC_ADDR (VGACTL_ADDR + 4)

AM_GPU_CONFIG_T config;

void __am_gpu_init() {
  int i;
  uint32_t hei_wei = inl(VGACTL_ADDR);
  int w = config.width = hei_wei >> 16;  
  int h = config.height = hei_wei & 0xffff;  
  uint32_t *fb = (uint32_t *)(uintptr_t)FB_ADDR;
  for (i = 0; i < w * h; i ++) fb[i] = i;
  outl(SYNC_ADDR, 1);
}

void __am_gpu_config(AM_GPU_CONFIG_T *cfg) {
    config.present = true;
    config.has_accel = false;
    config.vmemsz = 0;
    cfg=&config;
}

void __am_gpu_fbdraw(AM_GPU_FBDRAW_T *ctl) {

  if (ctl->sync) {
    outl(SYNC_ADDR, 1);
  }
  uint32_t *fb = (uint32_t *)(uintptr_t)(FB_ADDR+ctl->y*config.width+ctl->x);
  for(int i=0;i<ctl->h;i++)
  {
    for(int j=0;j<ctl->w;j++){
      if(i+ctl->y < config.height && j+ctl->x < config.width)
      {
        *fb = *(uint32_t*)ctl->pixels+i*ctl->w+j;
      }
    }
    fb += (config.width - ctl->w) ;
  }
}

void __am_gpu_status(AM_GPU_STATUS_T *status) {
  status->ready = true;
}
