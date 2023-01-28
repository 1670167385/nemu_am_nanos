typedef struct {
  size_t sec;
  size_t microsec;
} timeval;

typedef struct 
{
    bool keydown; 
    int keycode;
} kb_event;


timeval *get_time();
size_t serial_write(const void *buf, size_t offset, size_t len);
size_t events_read(void *buf, size_t offset, size_t len);