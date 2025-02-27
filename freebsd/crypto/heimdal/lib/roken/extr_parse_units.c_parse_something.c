
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct units {unsigned int mult; int * name; } ;


 scalar_t__ isspace (unsigned char) ;
 scalar_t__ strcasecmp (int *,char const*) ;
 size_t strcspn (char const*,char*) ;
 size_t strlen (int *) ;
 scalar_t__ strncasecmp (char const*,int *,size_t) ;
 int strtol (char const*,char**,int ) ;
 int stub1 (int,int,unsigned int) ;
 int stub2 (int,int,unsigned int) ;
 int stub3 (int,int,unsigned int) ;

__attribute__((used)) static int
parse_something (const char *s, const struct units *units,
   const char *def_unit,
   int (*func)(int res, int val, unsigned mult),
   int init,
   int accept_no_val_p)
{
    const char *p;
    int res = init;
    unsigned def_mult = 1;

    if (def_unit != ((void*)0)) {
 const struct units *u;

 for (u = units; u->name; ++u) {
     if (strcasecmp (u->name, def_unit) == 0) {
  def_mult = u->mult;
  break;
     }
 }
 if (u->name == ((void*)0))
     return -1;
    }

    p = s;
    while (*p) {
 int val;
 char *next;
 const struct units *u, *partial_unit;
 size_t u_len;
 unsigned partial;
 int no_val_p = 0;

 while(isspace((unsigned char)*p) || *p == ',')
     ++p;

 val = strtol(p, &next, 0);
 if (p == next) {
     val = 0;
     if(!accept_no_val_p)
  return -1;
     no_val_p = 1;
 }
 p = next;
 while (isspace((unsigned char)*p))
     ++p;
 if (*p == '\0') {
     res = (*func)(res, val, def_mult);
     if (res < 0)
  return res;
     break;
 } else if (*p == '+') {
     ++p;
     val = 1;
 } else if (*p == '-') {
     ++p;
     val = -1;
 }
 if (no_val_p && val == 0)
     val = 1;
 u_len = strcspn (p, ", \t");
 partial = 0;
 partial_unit = ((void*)0);
 if (u_len > 1 && p[u_len - 1] == 's')
     --u_len;
 for (u = units; u->name; ++u) {
     if (strncasecmp (p, u->name, u_len) == 0) {
  if (u_len == strlen (u->name)) {
      p += u_len;
      res = (*func)(res, val, u->mult);
      if (res < 0)
   return res;
      break;
  } else {
      ++partial;
      partial_unit = u;
  }
     }
 }
 if (u->name == ((void*)0)) {
     if (partial == 1) {
  p += u_len;
  res = (*func)(res, val, partial_unit->mult);
  if (res < 0)
      return res;
     } else {
  return -1;
     }
 }
 if (*p == 's')
     ++p;
    }
    return res;
}
