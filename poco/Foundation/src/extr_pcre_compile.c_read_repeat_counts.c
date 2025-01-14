
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pcre_uchar ;


 scalar_t__ CHAR_0 ;
 scalar_t__ const CHAR_RIGHT_CURLY_BRACKET ;
 int ERR4 ;
 int ERR5 ;
 scalar_t__ IS_DIGIT (scalar_t__ const) ;

__attribute__((used)) static const pcre_uchar *
read_repeat_counts(const pcre_uchar *p, int *minp, int *maxp, int *errorcodeptr)
{
int min = 0;
int max = -1;

while (IS_DIGIT(*p))
  {
  min = min * 10 + (int)(*p++ - CHAR_0);
  if (min > 65535)
    {
    *errorcodeptr = ERR5;
    return p;
    }
  }

if (*p == CHAR_RIGHT_CURLY_BRACKET) max = min; else
  {
  if (*(++p) != CHAR_RIGHT_CURLY_BRACKET)
    {
    max = 0;
    while(IS_DIGIT(*p))
      {
      max = max * 10 + (int)(*p++ - CHAR_0);
      if (max > 65535)
        {
        *errorcodeptr = ERR5;
        return p;
        }
      }
    if (max < min)
      {
      *errorcodeptr = ERR4;
      return p;
      }
    }
  }

*minp = min;
*maxp = max;
return p;
}
