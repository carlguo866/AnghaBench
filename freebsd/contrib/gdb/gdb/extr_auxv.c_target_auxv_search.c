
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
typedef int CORE_ADDR ;


 int target_auxv_parse (struct target_ops*,char**,char*,int *,int *) ;
 int target_auxv_read (struct target_ops*,char**) ;
 int xfree (char*) ;

int
target_auxv_search (struct target_ops *ops, CORE_ADDR match, CORE_ADDR *valp)
{
  CORE_ADDR type, val;
  char *data;
  int n = target_auxv_read (ops, &data);
  char *ptr = data;
  int ents = 0;

  if (n <= 0)
    return n;

  while (1)
    switch (target_auxv_parse (ops, &ptr, data + n, &type, &val))
      {
      case 1:
 if (type == match)
   {
     xfree (data);
     *valp = val;
     return 1;
   }
 break;
      case 0:
 xfree (data);
 return 0;
      default:
 xfree (data);
 return -1;
      }


}
