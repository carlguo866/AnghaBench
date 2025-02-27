
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Fprintf (int ,char*,int ,char const*,...) ;
 int exit (int) ;
 int prog ;
 int stderr ;
 scalar_t__ strtol (char const*,char**,int) ;

int
str2val(register const char *str, register const char *what,
    register int mi, register int ma)
{
 register const char *cp;
 register int val;
 char *ep;

 if (str[0] == '0' && (str[1] == 'x' || str[1] == 'X')) {
  cp = str + 2;
  val = (int)strtol(cp, &ep, 16);
 } else
  val = (int)strtol(str, &ep, 10);
 if (*ep != '\0') {
  Fprintf(stderr, "%s: \"%s\" bad value for %s \n",
      prog, str, what);
  exit(1);
 }
 if (val < mi && mi >= 0) {
  if (mi == 0)
   Fprintf(stderr, "%s: %s must be >= %d\n",
       prog, what, mi);
  else
   Fprintf(stderr, "%s: %s must be > %d\n",
       prog, what, mi - 1);
  exit(1);
 }
 if (val > ma && ma >= 0) {
  Fprintf(stderr, "%s: %s must be <= %d\n", prog, what, ma);
  exit(1);
 }
 return (val);
}
