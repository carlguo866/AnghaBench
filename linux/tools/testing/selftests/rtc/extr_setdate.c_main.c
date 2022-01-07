
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_mday; int tm_mon; int tm_year; int tm_hour; int tm_min; int tm_sec; } ;


 int O_RDONLY ;
 int RTC_RD_TIME ;
 int RTC_SET_TIME ;
 int close (int) ;
 char* default_time ;
 int errno ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int ioctl (int,int ,struct rtc_time*) ;
 int open (char const*,int ) ;
 int perror (char const*) ;
 int sscanf (char const*,char*,int*,int*,int*) ;
 int stderr ;

int main(int argc, char **argv)
{
 int fd, retval;
 struct rtc_time new, current;
 const char *rtc, *date;
 const char *time = default_time;

 switch (argc) {
 case 4:
  time = argv[3];

 case 3:
  date = argv[2];
  rtc = argv[1];
  break;
 default:
  fprintf(stderr, "usage: rtctest_setdate <rtcdev> <DD-MM-YYYY> [HH:MM:SS]\n");
  return 1;
 }

 fd = open(rtc, O_RDONLY);
 if (fd == -1) {
  perror(rtc);
  exit(errno);
 }

 sscanf(date, "%d-%d-%d", &new.tm_mday, &new.tm_mon, &new.tm_year);
 new.tm_mon -= 1;
 new.tm_year -= 1900;
 sscanf(time, "%d:%d:%d", &new.tm_hour, &new.tm_min, &new.tm_sec);

 fprintf(stderr, "Test will set RTC date/time to %d-%d-%d, %02d:%02d:%02d.\n",
  new.tm_mday, new.tm_mon + 1, new.tm_year + 1900,
  new.tm_hour, new.tm_min, new.tm_sec);


 retval = ioctl(fd, RTC_SET_TIME, &new);
 if (retval == -1) {
  perror("RTC_SET_TIME ioctl");
  close(fd);
  exit(errno);
 }


 retval = ioctl(fd, RTC_RD_TIME, &current);
 if (retval == -1) {
  perror("RTC_RD_TIME ioctl");
  exit(errno);
 }

 fprintf(stderr, "\n\nCurrent RTC date/time is %d-%d-%d, %02d:%02d:%02d.\n",
  current.tm_mday, current.tm_mon + 1, current.tm_year + 1900,
  current.tm_hour, current.tm_min, current.tm_sec);

 close(fd);
 return 0;
}
