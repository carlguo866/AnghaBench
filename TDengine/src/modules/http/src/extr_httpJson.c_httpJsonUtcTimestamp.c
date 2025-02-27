
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int int64_t ;
typedef int JsonBuf ;


 int httpJsonString (int *,char*,int) ;
 struct tm* localtime (int*) ;
 scalar_t__ snprintf (char*,int,char*,int) ;
 scalar_t__ strftime (char*,int,char*,struct tm*) ;

void httpJsonUtcTimestamp(JsonBuf* buf, int64_t t, bool us) {
  char ts[40] = {0};
  struct tm *ptm;
  int precision = 1000;
  if (us) {
    precision = 1000000;
  }

  time_t tt = t / precision;
  ptm = localtime(&tt);
  int length = (int) strftime(ts, 40, "%Y-%m-%dT%H:%M:%S", ptm);
  if (us) {
    length += snprintf(ts + length, 8, ".%06ld", t % precision);
  } else {
    length += snprintf(ts + length, 5, ".%03ld", t % precision);
  }
  length += (int) strftime(ts + length, 40 - length, "%z", ptm);

  httpJsonString(buf, ts, length);
}
