#ifndef __FS_H__
#define __FS_H__

#include <common.h>
#include "/home/xsr/ics-pa-2021/nanos-lite/src/device.h"

#ifndef SEEK_SET
enum {SEEK_SET, SEEK_CUR, SEEK_END};
#endif


//#define CONFIG_FILETRACE

typedef size_t (*ReadFn) (void *buf, size_t offset, size_t len);
typedef size_t (*WriteFn) (const void *buf, size_t offset, size_t len);
size_t invalid_write(const void *buf, size_t offset, size_t len);
size_t invalid_read(void *buf, size_t offset, size_t len);

typedef struct {
  char *name;
  size_t size;
  size_t disk_offset;
  ReadFn read;
  WriteFn write;
  size_t open_offset;
} Finfo;

enum {FD_STDIN, FD_STDOUT, FD_STDERR, FD_FB};

/* This is the information about all files in disk. */
static Finfo file_table[] __attribute__((used)) = {
  [FD_STDIN]  = {"stdin", 0, 0, invalid_read, invalid_write},
  [FD_STDOUT] = {"stdout", 0, 0, invalid_read},
  [FD_STDERR] = {"stderr", 0, 0, invalid_read},
  {"/dev/events", 0, 0, events_read},
  {"/dev/fb", 0, 0},
  {"/proc/dispinfo", 0, 0, dispinfo_read},
#include "/home/xsr/ics-pa-2021/nanos-lite/src/files.h"
  {NULL}
};

int fs_open(const char *pathname, int flags, int mode);
size_t fs_read(int fd, void *buf, size_t len);
size_t fs_write(int fd, const void *buf, size_t len);
size_t fs_lseek(int fd, size_t offset, int whence);
int fs_close(int fd);
Finfo *get_file_table();
#endif
