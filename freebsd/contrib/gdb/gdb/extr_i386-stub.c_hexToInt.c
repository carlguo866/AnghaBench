
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hex (char) ;

int
hexToInt (char **ptr, int *intValue)
{
  int numChars = 0;
  int hexValue;

  *intValue = 0;

  while (**ptr)
    {
      hexValue = hex (**ptr);
      if (hexValue >= 0)
 {
   *intValue = (*intValue << 4) | hexValue;
   numChars++;
 }
      else
 break;

      (*ptr)++;
    }

  return (numChars);
}
