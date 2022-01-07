
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_yday; int tm_year; int tm_mon; int tm_mday; } ;
typedef int fsec_t ;


 int DAY ;
 int DOY ;
 int DTK_DATE_M ;
 int DTK_M (int ) ;
 int DecodeNumberField (int,char*,int,int*,struct tm*,int *,int*) ;
 int MONTH ;
 int MONTHS_PER_YEAR ;
 int YEAR ;
 scalar_t__ date2j (int,int,int) ;
 int j2date (scalar_t__,int*,int*,int*) ;
 int strtod (char*,char**) ;
 int strtoint (char*,char**,int) ;

__attribute__((used)) static int
DecodeNumber(int flen, char *str, int fmask,
    int *tmask, struct tm *tm, fsec_t *fsec, bool *is2digits, bool EuroDates)
{
 int val;
 char *cp;

 *tmask = 0;

 val = strtoint(str, &cp, 10);
 if (cp == str)
  return -1;

 if (*cp == '.')
 {




  if (cp - str > 2)
   return DecodeNumberField(flen, str, (fmask | DTK_DATE_M),
          tmask, tm, fsec, is2digits);

  *fsec = strtod(cp, &cp);
  if (*cp != '\0')
   return -1;
 }
 else if (*cp != '\0')
  return -1;


 if (flen == 3 && (fmask & DTK_M(YEAR)) && val >= 1 && val <= 366)
 {
  *tmask = (DTK_M(DOY) | DTK_M(MONTH) | DTK_M(DAY));
  tm->tm_yday = val;
  j2date(date2j(tm->tm_year, 1, 1) + tm->tm_yday - 1,
      &tm->tm_year, &tm->tm_mon, &tm->tm_mday);
 }
 else if (flen >= 4)
 {
  *tmask = DTK_M(YEAR);


  if ((fmask & DTK_M(YEAR)) && !(fmask & DTK_M(DAY)) &&
   tm->tm_year >= 1 && tm->tm_year <= 31)
  {
   tm->tm_mday = tm->tm_year;
   *tmask = DTK_M(DAY);
  }

  tm->tm_year = val;
 }


 else if ((fmask & DTK_M(YEAR)) && !(fmask & DTK_M(MONTH)) && val >= 1 && val <= MONTHS_PER_YEAR)
 {
  *tmask = DTK_M(MONTH);
  tm->tm_mon = val;
 }

 else if ((EuroDates || (fmask & DTK_M(MONTH))) &&
    !(fmask & DTK_M(YEAR)) && !(fmask & DTK_M(DAY)) &&
    val >= 1 && val <= 31)
 {
  *tmask = DTK_M(DAY);
  tm->tm_mday = val;
 }
 else if (!(fmask & DTK_M(MONTH)) && val >= 1 && val <= MONTHS_PER_YEAR)
 {
  *tmask = DTK_M(MONTH);
  tm->tm_mon = val;
 }
 else if (!(fmask & DTK_M(DAY)) && val >= 1 && val <= 31)
 {
  *tmask = DTK_M(DAY);
  tm->tm_mday = val;
 }





 else if (!(fmask & DTK_M(YEAR)) && (flen >= 4 || flen == 2))
 {
  *tmask = DTK_M(YEAR);
  tm->tm_year = val;


  *is2digits = (flen == 2);
 }
 else
  return -1;

 return 0;
}
