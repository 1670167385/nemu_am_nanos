#include <NDL.h>
#include <SDL.h>
#include <string.h>

#define keyname(k) #k,

static const char *keyname[] = {
  "NONE",
  _KEYS(keyname)
};

int SDL_PushEvent(SDL_Event *ev) {
  return 0;
}

int SDL_PollEvent(SDL_Event *ev) {
  ev->type = SDL_KEYDOWN;
  char buf[64];
  while(!NDL_PollEvent(buf, sizeof(buf)));
  uint32_t l=0;
  while(buf[l]!='\n')l++;
  buf[l] = 0;

  for(int i=0;i<83;i++){
    if(strcmp(keyname[i], buf+3) == 0){
      ev->key.keysym.sym = i;
      break;
    }
  }
  return 1;
}

int SDL_WaitEvent(SDL_Event *event) {
  event->type = SDL_KEYDOWN;
  char buf[64];
  while(!NDL_PollEvent(buf, sizeof(buf)));
  uint32_t l=0;
  while(buf[l]!='\n')l++;
  buf[l] = 0;

  for(int i=0;i<83;i++){
    if(strcmp(keyname[i], buf+3) == 0){
      event->key.keysym.sym = i;
      break;
    }
  }


  return 1;
}

int SDL_PeepEvents(SDL_Event *ev, int numevents, int action, uint32_t mask) {
  return 0;
}

uint8_t* SDL_GetKeyState(int *numkeys) {
  return NULL;
}
