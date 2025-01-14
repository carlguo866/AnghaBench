
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;


 int freeenv (char*) ;
 char* kern_getenv (char*) ;
 int sscanf (char*,char*,int*) ;
 int strlen (char*) ;

__attribute__((used)) static int
decode_nfshandle(char *ev, u_char *fh, int maxfh)
{
 u_char *cp, *ep;
 int len, val;

 ep = cp = kern_getenv(ev);
 if (cp == ((void*)0))
  return (0);
 if ((strlen(cp) < 2) || (*cp != 'X')) {
  freeenv(ep);
  return (0);
 }
 len = 0;
 cp++;
 for (;;) {
  if (*cp == 'X') {
   freeenv(ep);
   return (len);
  }
  if ((sscanf(cp, "%2x", &val) != 1) || (val > 0xff)) {
   freeenv(ep);
   return (0);
  }
  *(fh++) = val;
  len++;
  cp += 2;
  if (len > maxfh) {
      freeenv(ep);
      return (0);
  }
 }
}
