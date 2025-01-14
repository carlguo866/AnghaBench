
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int DNS_LABELTYPE_BITSTRING ;
 int EINVAL ;
 int EMSGSIZE ;
 int NS_CMPRSFLGS ;
 int NS_TYPE_ELT ;
 int decode_bitstring (int const**,char*,char*) ;
 void** digits ;
 int errno ;
 int labellen (int const*) ;
 int printable (int) ;
 scalar_t__ special (int) ;

int
ns_name_ntop(const u_char *src, char *dst, size_t dstsiz)
{
 const u_char *cp;
 char *dn, *eom;
 u_char c;
 u_int n;
 int l;

 cp = src;
 dn = dst;
 eom = dst + dstsiz;

 while ((n = *cp++) != 0) {
  if ((n & NS_CMPRSFLGS) == NS_CMPRSFLGS) {

   errno = EMSGSIZE;
   return (-1);
  }
  if (dn != dst) {
   if (dn >= eom) {
    errno = EMSGSIZE;
    return (-1);
   }
   *dn++ = '.';
  }
  if ((l = labellen(cp - 1)) < 0) {
   errno = EMSGSIZE;
   return (-1);
  }
  if (dn + l >= eom) {
   errno = EMSGSIZE;
   return (-1);
  }
  if ((n & NS_CMPRSFLGS) == NS_TYPE_ELT) {
   int m;

   if (n != DNS_LABELTYPE_BITSTRING) {

    errno = EINVAL;
    return (-1);
   }
   if ((m = decode_bitstring(&cp, dn, eom)) < 0)
   {
    errno = EMSGSIZE;
    return (-1);
   }
   dn += m;
   continue;
  }
  for ((void)((void*)0); l > 0; l--) {
   c = *cp++;
   if (special(c)) {
    if (dn + 1 >= eom) {
     errno = EMSGSIZE;
     return (-1);
    }
    *dn++ = '\\';
    *dn++ = (char)c;
   } else if (!printable(c)) {
    if (dn + 3 >= eom) {
     errno = EMSGSIZE;
     return (-1);
    }
    *dn++ = '\\';
    *dn++ = digits[c / 100];
    *dn++ = digits[(c % 100) / 10];
    *dn++ = digits[c % 10];
   } else {
    if (dn >= eom) {
     errno = EMSGSIZE;
     return (-1);
    }
    *dn++ = (char)c;
   }
  }
 }
 if (dn == dst) {
  if (dn >= eom) {
   errno = EMSGSIZE;
   return (-1);
  }
  *dn++ = '.';
 }
 if (dn >= eom) {
  errno = EMSGSIZE;
  return (-1);
 }
 *dn++ = '\0';
 return (dn - dst);
}
