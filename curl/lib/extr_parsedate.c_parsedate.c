
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct my_tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
typedef enum assume { ____Placeholder_assume } assume ;


 int DATE_MDAY ;
 int DATE_YEAR ;
 int FALSE ;
 scalar_t__ INT_MAX ;
 scalar_t__ INT_MIN ;
 scalar_t__ ISALPHA (char const) ;
 scalar_t__ ISDIGIT (char const) ;
 int PARSEDATE_FAIL ;
 int PARSEDATE_LATER ;
 int PARSEDATE_OK ;
 int PARSEDATE_SOONER ;
 int TIME_T_MAX ;
 int TIME_T_MIN ;
 int TRUE ;
 int checkday (char*,size_t) ;
 int checkmonth (char*) ;
 int checktz (char*) ;
 int curlx_sltosi (long) ;
 int errno ;
 int my_timegm (struct my_tm*,int*) ;
 int skip (char const**) ;
 int sscanf (char const*,char*,...) ;
 size_t strlen (char*) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static int parsedate(const char *date, time_t *output)
{
  time_t t = 0;
  int wdaynum = -1;
  int monnum = -1;
  int mdaynum = -1;
  int hournum = -1;
  int minnum = -1;
  int secnum = -1;
  int yearnum = -1;
  int tzoff = -1;
  struct my_tm tm;
  enum assume dignext = DATE_MDAY;
  const char *indate = date;
  int part = 0;

  while(*date && (part < 6)) {
    bool found = FALSE;

    skip(&date);

    if(ISALPHA(*date)) {

      char buf[32]="";
      size_t len;
      if(sscanf(date, "%31[ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                          "abcdefghijklmnopqrstuvwxyz]", buf))
        len = strlen(buf);
      else
        len = 0;

      if(wdaynum == -1) {
        wdaynum = checkday(buf, len);
        if(wdaynum != -1)
          found = TRUE;
      }
      if(!found && (monnum == -1)) {
        monnum = checkmonth(buf);
        if(monnum != -1)
          found = TRUE;
      }

      if(!found && (tzoff == -1)) {

        tzoff = checktz(buf);
        if(tzoff != -1)
          found = TRUE;
      }

      if(!found)
        return PARSEDATE_FAIL;

      date += len;
    }
    else if(ISDIGIT(*date)) {

      int val;
      char *end;
      int len = 0;
      if((secnum == -1) &&
         (3 == sscanf(date, "%02d:%02d:%02d%n",
                      &hournum, &minnum, &secnum, &len))) {

        date += len;
      }
      else if((secnum == -1) &&
              (2 == sscanf(date, "%02d:%02d%n", &hournum, &minnum, &len))) {

        date += len;
        secnum = 0;
      }
      else {
        long lval;
        int error;
        int old_errno;

        old_errno = errno;
        errno = 0;
        lval = strtol(date, &end, 10);
        error = errno;
        if(errno != old_errno)
          errno = old_errno;

        if(error)
          return PARSEDATE_FAIL;






        val = curlx_sltosi(lval);

        if((tzoff == -1) &&
           ((end - date) == 4) &&
           (val <= 1400) &&
           (indate< date) &&
           ((date[-1] == '+' || date[-1] == '-'))) {
          found = TRUE;
          tzoff = (val/100 * 60 + val%100)*60;



          tzoff = date[-1]=='+'?-tzoff:tzoff;
        }

        if(((end - date) == 8) &&
           (yearnum == -1) &&
           (monnum == -1) &&
           (mdaynum == -1)) {

          found = TRUE;
          yearnum = val/10000;
          monnum = (val%10000)/100-1;
          mdaynum = val%100;
        }

        if(!found && (dignext == DATE_MDAY) && (mdaynum == -1)) {
          if((val > 0) && (val<32)) {
            mdaynum = val;
            found = TRUE;
          }
          dignext = DATE_YEAR;
        }

        if(!found && (dignext == DATE_YEAR) && (yearnum == -1)) {
          yearnum = val;
          found = TRUE;
          if(yearnum < 100) {
            if(yearnum > 70)
              yearnum += 1900;
            else
              yearnum += 2000;
          }
          if(mdaynum == -1)
            dignext = DATE_MDAY;
        }

        if(!found)
          return PARSEDATE_FAIL;

        date = end;
      }
    }

    part++;
  }

  if(-1 == secnum)
    secnum = minnum = hournum = 0;

  if((-1 == mdaynum) ||
     (-1 == monnum) ||
     (-1 == yearnum))

    return PARSEDATE_FAIL;
  if(yearnum > 2037) {
    *output = TIME_T_MAX;
    return PARSEDATE_LATER;
  }
  if(yearnum < 1903) {
    *output = TIME_T_MIN;
    return PARSEDATE_SOONER;
  }
  if((mdaynum > 31) || (monnum > 11) ||
     (hournum > 23) || (minnum > 59) || (secnum > 60))
    return PARSEDATE_FAIL;

  tm.tm_sec = secnum;
  tm.tm_min = minnum;
  tm.tm_hour = hournum;
  tm.tm_mday = mdaynum;
  tm.tm_mon = monnum;
  tm.tm_year = yearnum;





  my_timegm(&tm, &t);


  if(tzoff == -1)
    tzoff = 0;

  if((tzoff > 0) && (t > TIME_T_MAX - tzoff)) {
    *output = TIME_T_MAX;
    return PARSEDATE_LATER;
  }

  t += tzoff;

  *output = t;

  return PARSEDATE_OK;
}
