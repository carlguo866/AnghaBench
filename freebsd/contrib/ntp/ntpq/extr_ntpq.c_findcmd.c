
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xcmd {char const* keyword; } ;


 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,unsigned int) ;

__attribute__((used)) static int
findcmd(
 const char * str,
 struct xcmd * clist1,
 struct xcmd * clist2,
 struct xcmd ** cmd
 )
{
 struct xcmd *cl;
 size_t clen;
 int nmatch;
 struct xcmd *nearmatch = ((void*)0);
 struct xcmd *clist;

 clen = strlen(str);
 nmatch = 0;
 if (clist1 != 0)
     clist = clist1;
 else if (clist2 != 0)
     clist = clist2;
 else
     return 0;

    again:
 for (cl = clist; cl->keyword != 0; cl++) {

  if (*str != *(cl->keyword))
      continue;
  if (strncmp(str, cl->keyword, (unsigned)clen) == 0) {





   if (*((cl->keyword) + clen) == '\0') {
    *cmd = cl;
    return 1;
   }
   nmatch++;
   nearmatch = cl;
  }
 }





 if (clist == clist1 && clist2 != 0) {
  clist = clist2;
  goto again;
 }





 if (nmatch == 1) {
  *cmd = nearmatch;
  return 1;
 }
 return nmatch;
}
