#ifndef __COMMON_H__
#define __COMMON_H__

/* Uncomment these macros to enable corresponding functionality. */
#define HAS_CTE  //->init_irq()
//#define HAS_VME
//#define MULTIPROGRAM
//#define TIME_SHARING

#include <am.h>
#include <klib.h>
#include <klib-macros.h>
#include <debug.h>

extern uint8_t ramdisk_start;
extern uint8_t ramdisk_end;
size_t ramdisk_read(void *buf, size_t offset, size_t len);
size_t get_ramdisk_st();
#endif
