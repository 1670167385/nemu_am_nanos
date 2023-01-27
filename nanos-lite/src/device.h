typedef struct {
  size_t sec;
  size_t microsec;
} timeval;


timeval *get_time();
size_t serial_write(const void *buf, size_t offset, size_t len);