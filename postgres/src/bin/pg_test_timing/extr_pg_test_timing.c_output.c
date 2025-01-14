
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint64 ;
typedef size_t int64 ;


 char* Max (int,int) ;
 char* _ (char*) ;
 scalar_t__* histogram ;
 int printf (char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static void
output(uint64 loop_count)
{
 int64 max_bit = 31,
    i;
 char *header1 = _("< us");
 char *header2 = _("% of total");
 char *header3 = _("count");
 int len1 = strlen(header1);
 int len2 = strlen(header2);
 int len3 = strlen(header3);


 while (max_bit > 0 && histogram[max_bit] == 0)
  max_bit--;

 printf(_("Histogram of timing durations:\n"));
 printf("%*s   %*s %*s\n",
     Max(6, len1), header1,
     Max(10, len2), header2,
     Max(10, len3), header3);

 for (i = 0; i <= max_bit; i++)
  printf("%*ld    %*.5f %*lld\n",
      Max(6, len1), 1l << i,
      Max(10, len2) - 1, (double) histogram[i] * 100 / loop_count,
      Max(10, len3), histogram[i]);
}
