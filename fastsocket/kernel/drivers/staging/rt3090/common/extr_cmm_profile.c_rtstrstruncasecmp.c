
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PSTRING ;
typedef scalar_t__ INT ;


 scalar_t__ strlen (char*) ;

PSTRING rtstrstruncasecmp(PSTRING s1, PSTRING s2)
{
 INT l1, l2, i;
 char temp1, temp2;

 l2 = strlen(s2);
 if (!l2)
  return (char *) s1;

 l1 = strlen(s1);

 while (l1 >= l2)
 {
  l1--;

  for(i=0; i<l2; i++)
  {
   temp1 = *(s1+i);
   temp2 = *(s2+i);

   if (('a' <= temp1) && (temp1 <= 'z'))
    temp1 = 'A'+(temp1-'a');
   if (('a' <= temp2) && (temp2 <= 'z'))
    temp2 = 'A'+(temp2-'a');

   if (temp1 != temp2)
    break;
  }

  if (i == l2)
   return (char *) s1;

  s1++;
 }

 return ((void*)0);
}
