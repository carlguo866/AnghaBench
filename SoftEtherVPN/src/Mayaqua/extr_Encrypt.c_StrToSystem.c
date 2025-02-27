
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wYear; int wMonth; int wDay; int wHour; int wMinute; int wSecond; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int NormalizeSystem (TYPE_1__*) ;
 int StrLen (char*) ;
 int ToInt (char*) ;
 int Zero (TYPE_1__*,int) ;

bool StrToSystem(SYSTEMTIME *s, char *str)
{
 char century[3] = {0, 0, 0};
 bool fourdigityear = 0;


 if (s == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }
 if (StrLen(str) != 13)
 {
  if (StrLen(str) != 15)
  {
   return 0;
  }



  fourdigityear = 1;
  century[0] = str[0];
  century[1] = str[1];
  str += 2;
 }
 if (str[12] != 'Z')
 {
  return 0;
 }


 {
  char year[3] = {str[0], str[1], 0},
   month[3] = {str[2], str[3], 0},
   day[3] = {str[4], str[5], 0},
   hour[3] = {str[6], str[7], 0},
   minute[3] = {str[8], str[9], 0},
   second[3] = {str[10], str[11], 0};
  Zero(s, sizeof(SYSTEMTIME));
  s->wYear = ToInt(year);
  if (fourdigityear)
  {
   s->wYear += ToInt(century) * 100;
  }
  else if (s->wYear >= 60)
  {
   s->wYear += 1900;
  }
  else
  {
   s->wYear += 2000;
  }
  s->wMonth = ToInt(month);
  s->wDay = ToInt(day);
  s->wHour = ToInt(hour);
  s->wMinute = ToInt(minute);
  s->wSecond = ToInt(second);
  NormalizeSystem(s);
 }

 return 1;
}
