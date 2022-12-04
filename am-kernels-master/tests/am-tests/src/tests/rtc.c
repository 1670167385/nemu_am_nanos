#include <amtest.h>

void rtc_test() {
  //AM_TIMER_RTC_T rtc;
  int sec = 1;
  while (sec<2) {
    while(io_read(AM_TIMER_UPTIME).us / 1000000 < sec);
    //rtc = io_read(AM_TIMER_RTC);
    //printf("%d",rtc.day);
    //printf("%d-%d-%d ",rtc.year ,rtc.month,rtc.day);
    //printf("%d:%d:%d",rtc.hour, rtc.minute, rtc.second);
    //printf("%d-%d-%d %d:%d:%d GMT (", rtc.year, rtc.month, rtc.day, rtc.hour, rtc.minute, rtc.second);
    if (sec == 1) {
      printf("%d second).\n", sec);
    } else {
      printf("%d seconds).\n", sec);
    }
    sec ++;
  }
}
