
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NS_INADDRSZ ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 char* strchr (char const*,int) ;

__attribute__((used)) static int
inet_pton4(const char *src, unsigned char *dst) {
 static const char digits[] = "0123456789";
 int saw_digit, octets, ch;
 unsigned char tmp[NS_INADDRSZ], *tp;

 saw_digit = 0;
 octets = 0;
 *(tp = tmp) = 0;
 while ((ch = *src++) != '\0') {
  const char *pch;

  if ((pch = strchr(digits, ch)) != ((void*)0)) {
   size_t newv = *tp * 10 + (pch - digits);

   if (saw_digit && *tp == 0)
    return (0);
   if (newv > 255)
    return (0);
   *tp = (unsigned char)newv;
   if (!saw_digit) {
    if (++octets > 4)
     return (0);
    saw_digit = 1;
   }
  } else if (ch == '.' && saw_digit) {
   if (octets == 4)
    return (0);
   *++tp = 0;
   saw_digit = 0;
  } else
   return (0);
 }
 if (octets < 4)
  return (0);
 memcpy(dst, tmp, NS_INADDRSZ);
 return (1);
}
