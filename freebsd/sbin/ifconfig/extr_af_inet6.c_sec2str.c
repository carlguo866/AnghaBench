
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static char *
sec2str(time_t total)
{
 static char result[256];
 int days, hours, mins, secs;
 int first = 1;
 char *p = result;

 if (0) {
  days = total / 3600 / 24;
  hours = (total / 3600) % 24;
  mins = (total / 60) % 60;
  secs = total % 60;

  if (days) {
   first = 0;
   p += sprintf(p, "%dd", days);
  }
  if (!first || hours) {
   first = 0;
   p += sprintf(p, "%dh", hours);
  }
  if (!first || mins) {
   first = 0;
   p += sprintf(p, "%dm", mins);
  }
  sprintf(p, "%ds", secs);
 } else
  sprintf(result, "%lu", (unsigned long)total);

 return(result);
}
