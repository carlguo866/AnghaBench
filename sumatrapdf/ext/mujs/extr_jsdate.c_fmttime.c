
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HourFromTime (double) ;
 int MinFromTime (double) ;
 int SecFromTime (double) ;
 double fabs (double) ;
 int isfinite (double) ;
 int msFromTime (double) ;
 int sprintf (char*,char*,int,int,int,int,...) ;

__attribute__((used)) static char *fmttime(char *buf, double t, double tza)
{
 int H = HourFromTime(t);
 int M = MinFromTime(t);
 int S = SecFromTime(t);
 int ms = msFromTime(t);
 int tzh = HourFromTime(fabs(tza));
 int tzm = MinFromTime(fabs(tza));
 if (!isfinite(t))
  return "Invalid Date";
 if (tza == 0)
  sprintf(buf, "%02d:%02d:%02d.%03dZ", H, M, S, ms);
 else if (tza < 0)
  sprintf(buf, "%02d:%02d:%02d.%03d-%02d:%02d", H, M, S, ms, tzh, tzm);
 else
  sprintf(buf, "%02d:%02d:%02d.%03d+%02d:%02d", H, M, S, ms, tzh, tzm);
 return buf;
}
