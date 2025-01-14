
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_CONF ;
 int INT_FIG_ ;
 int INT_NFIG ;
 int INT_ONFI ;
 scalar_t__ isalnum (char) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int use_config (char*,int) ;

__attribute__((used)) static void parse_config_file(char *map, size_t len)
{
 int *end = (int *) (map + len);

 int *m = (int *) map + 1;
 char *p, *q;

 for (; m < end; m++) {
  if (*m == INT_CONF) { p = (char *) m ; goto conf; }
  if (*m == INT_ONFI) { p = (char *) m-1; goto conf; }
  if (*m == INT_NFIG) { p = (char *) m-2; goto conf; }
  if (*m == INT_FIG_) { p = (char *) m-3; goto conf; }
  continue;
 conf:
  if (p > map + len - 7)
   continue;
  if (memcmp(p, "CONFIG_", 7))
   continue;
  for (q = p + 7; q < map + len; q++) {
   if (!(isalnum(*q) || *q == '_'))
    goto found;
  }
  continue;

 found:
  if (!memcmp(q - 7, "_MODULE", 7))
   q -= 7;
  if( (q-p-7) < 0 )
   continue;
  use_config(p+7, q-p-7);
 }
}
