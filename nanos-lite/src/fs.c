#include <fs.h>
#include "ramdisk1.h"

size_t invalid_read(void *buf, size_t offset, size_t len) {
  panic("should not reach here");
  return 0;
}

size_t invalid_write(const void *buf, size_t offset, size_t len) {
  panic("should not reach here");
  return 0;
}



void init_fs() {
  // TODO: initialize the size of /dev/fb
}

Finfo *get_file_table(){
  return file_table; 
}

int fs_open(const char *pathname, int flags, int mode){
  for(int i=3;i<25;i++){
    if(!strcmp(file_table[i].name, pathname)){
      file_table[i].open_offset = 0;
      return i;
    }
  }
  panic("Can't open this file %s", pathname);
  return -1;
}

size_t fs_read(int fd, void *buf, size_t len){
  /*if(c->GPR2 <= 2)
    panic("can't read %s", file_table[c->GPR2].name);
  else */
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
  if(fd ==1 || fd ==2){       //out/err
    for(int p=0; p < len; p++){
      putch(*(char*)(buf + p));
    }
  }
  else{                       //file
    if(file_table[fd].open_offset + len > file_table[fd].size)
      panic("file %s writing is out of bound", file_table[fd].name);
    else{
      ramdisk_write(buf, file_table[fd].disk_offset+file_table[fd].open_offset, len);
      file_table[fd].open_offset += len;
    } 
  }
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
