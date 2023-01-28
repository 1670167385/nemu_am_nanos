#include <fs.h>
#include "ramdisk1.h"
#include "device.h"

static size_t table_len;

size_t invalid_read(void *buf, size_t offset, size_t len) {
  panic("should not reach here");
  return 0;
}

size_t invalid_write(const void *buf, size_t offset, size_t len) {
  panic("should not reach here");
  return 0;
}

void init_fs() {
  file_table[FD_STDOUT].write = serial_write;
  file_table[FD_STDERR].write = serial_write;
  while(file_table[table_len++].name);
  //add event
  file_table[table_len].name = "/dev/events";
  file_table[table_len].read = events_read;
  file_table[table_len].write= invalid_write;
  table_len++;
  printf("file_len = %d\n",table_len);
  // TODO: initialize the size of /dev/fb
}

Finfo *get_file_table(){
  return file_table; 
}

int fs_open(const char *pathname, int flags, int mode){
  for(int i=3; i<table_len; i++){
    if(!strcmp(file_table[i].name, pathname)){
      file_table[i].open_offset = 0;
#ifdef CONFIG_FILETRACE
      printf("open file %s\n", file_table[i].name);
#endif
      return i;
    }
  }
  panic("Can't open this file %s", pathname);
  return -1;
}

size_t fs_read(int fd, void *buf, size_t len){
  if(file_table[fd].read)
    return file_table[fd].read(buf, 0, len);
  if(file_table[fd].open_offset + len > file_table[fd].size){
    len=file_table[fd].size-file_table[fd].open_offset;
    ramdisk_read(buf, file_table[fd].disk_offset+file_table[fd].open_offset, len);
    //panic("file %s reading is out of bound", file_table[fd].name);
  }
  else{
    ramdisk_read(buf, file_table[fd].disk_offset+file_table[fd].open_offset, len);
  }
  file_table[fd].open_offset += len;
  return len;
}

size_t fs_write(int fd, const void *buf, size_t len){
  if(file_table[fd].write)
    return file_table[fd].write(buf, 0, len);
  if(file_table[fd].open_offset + len > file_table[fd].size){
    len=file_table[fd].size-file_table[fd].open_offset;
    ramdisk_write(buf, file_table[fd].disk_offset+file_table[fd].open_offset, len);
    //panic("file %s reading is out of bound", file_table[fd].name);
  }
  else{
    ramdisk_write(buf, file_table[fd].disk_offset+file_table[fd].open_offset, len);
  } 
  file_table[fd].open_offset += len;
  return len;
}

size_t fs_lseek(int fd, size_t offset, int whence){
  if(whence == SEEK_SET){
    if(offset > file_table[fd].size || offset < 0)
      panic("lseek is out of bound!");
    else
      file_table[fd].open_offset = offset;
  }
  else if(whence == SEEK_END){
    if(offset+file_table[fd].size < 0 || offset > 0)
      panic("lseek is out of bound!");
    else
      file_table[fd].open_offset = file_table[fd].size + offset;
  }
  else{
    if(offset+file_table[fd].open_offset < 0 || offset+file_table[fd].open_offset > file_table[fd].size)
      panic("lseek is out of bound!");
    else
      file_table[fd].open_offset = file_table[fd].open_offset + offset;
  }
  return file_table[fd].open_offset;
}

int fs_close(int fd){
  return 0;
}