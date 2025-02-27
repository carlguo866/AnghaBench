
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int buffer ;


 scalar_t__ snprintf (char*,int,char*,...) ;

__attribute__((used)) static const char *
format_time(struct timeval *tv)
{
 static char buffer[32];
 int days, hours, minutes, seconds, used;

 minutes = tv->tv_sec / 60;
 seconds = tv->tv_sec % 60;
 hours = minutes / 60;
 minutes %= 60;
 days = hours / 24;
 hours %= 24;
 used = 0;
 if (days == 1)
  used += snprintf(buffer, sizeof(buffer), "1 day ");
 else if (days > 0)
  used += snprintf(buffer, sizeof(buffer), "%u days ", days);

 snprintf(buffer + used, sizeof(buffer) - used, "%02u:%02u:%02u.%06u",
     hours, minutes, seconds, (unsigned int)tv->tv_usec);
 return (buffer);
}
