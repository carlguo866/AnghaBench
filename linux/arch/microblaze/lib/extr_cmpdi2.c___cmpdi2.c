
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int word_type ;
struct TYPE_3__ {scalar_t__ high; scalar_t__ low; } ;
struct TYPE_4__ {long long ll; TYPE_1__ s; } ;
typedef TYPE_2__ DWunion ;



word_type __cmpdi2(long long a, long long b)
{
 const DWunion au = {
  .ll = a
 };
 const DWunion bu = {
  .ll = b
 };

 if (au.s.high < bu.s.high)
  return 0;
 else if (au.s.high > bu.s.high)
  return 2;

 if ((unsigned int) au.s.low < (unsigned int) bu.s.low)
  return 0;
 else if ((unsigned int) au.s.low > (unsigned int) bu.s.low)
  return 2;

 return 1;
}
