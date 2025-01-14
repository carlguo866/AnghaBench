
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char const) ;
 scalar_t__ str_ends_with (char const*,int,char*) ;
 char* strstr (char const*,char*) ;
 int use_config (char const*,int) ;

__attribute__((used)) static void parse_config_file(const char *p)
{
 const char *q, *r;
 const char *start = p;

 while ((p = strstr(p, "CONFIG_"))) {
  if (p > start && (isalnum(p[-1]) || p[-1] == '_')) {
   p += 7;
   continue;
  }
  p += 7;
  q = p;
  while (*q && (isalnum(*q) || *q == '_'))
   q++;
  if (str_ends_with(p, q - p, "_MODULE"))
   r = q - 7;
  else
   r = q;
  if (r > p)
   use_config(p, r - p);
  p = q;
 }
}
