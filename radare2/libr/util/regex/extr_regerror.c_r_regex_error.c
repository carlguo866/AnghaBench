
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rerr {int code; char* name; char* explain; } ;
typedef int convbuf ;
typedef int RRegex ;


 int R_REGEX_ATOI ;
 int R_REGEX_ITOA ;
 int STRLCPY (char*,char*,size_t) ;
 char* regatoi (int const*,char*,int) ;
 struct rerr* rerrs ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;

size_t
r_regex_error(int errcode, const RRegex *preg, char *errbuf, size_t errbuf_size)
{
 struct rerr *r;
 size_t len;
 int target = errcode &~ R_REGEX_ITOA;
 char *s;
 char convbuf[50];

 if (errcode == R_REGEX_ATOI) {
  s = regatoi(preg, convbuf, sizeof convbuf);
 } else {
  for (r = rerrs; r->code != 0; r++) {
   if (r->code == target) {
    break;
   }
  }

  if (errcode&R_REGEX_ITOA) {
   if (r->code != 0) {
    STRLCPY (convbuf, r->name, sizeof (convbuf)-1);
   } else {
    snprintf (convbuf, sizeof convbuf, "R_REGEX_0x%x", target);
   }
   s = convbuf;
  } else {
   s = r->explain;
  }
 }

 len = strlen(s) + 1;
 if (errbuf_size > 0) {
  STRLCPY(errbuf, s, errbuf_size - 1);
 }

 return len;
}
