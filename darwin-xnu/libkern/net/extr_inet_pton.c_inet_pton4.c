
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int NS_INADDRSZ ;
 int memcpy (int*,int*,int) ;
 char* strchr (char const*,int) ;

__attribute__((used)) static int
inet_pton4(const char *src, u_char *dst)
{
 static const char digits[] = "0123456789";
 int saw_digit, octets, ch;

 u_char tmp[4], *tp;

 saw_digit = 0;
 octets = 0;
 *(tp = tmp) = 0;
 while ((ch = *src++) != '\0') {
  const char *pch;

  if ((pch = strchr(digits, ch)) != ((void*)0)) {
   u_int new = *tp * 10 + (pch - digits);

   if (saw_digit && *tp == 0)
    return (0);
   if (new > 255)
    return (0);
   *tp = new;
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
 memcpy(dst, tmp, 4);
 return (1);
}
