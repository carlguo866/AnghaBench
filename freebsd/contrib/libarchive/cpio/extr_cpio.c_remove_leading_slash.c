
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
remove_leading_slash(const char *p)
{
 const char *rp;



 if ((p[0] == '/' || p[0] == '\\') &&
     (p[1] == '/' || p[1] == '\\') &&
     (p[2] == '.' || p[2] == '?') &&
     (p[3] == '/' || p[3] == '\\'))
 {
  if (p[2] == '?' &&
      (p[4] == 'U' || p[4] == 'u') &&
      (p[5] == 'N' || p[5] == 'n') &&
      (p[6] == 'C' || p[6] == 'c') &&
      (p[7] == '/' || p[7] == '\\'))
   p += 8;
  else
   p += 4;
 }
 do {
  rp = p;


  if (((p[0] >= 'a' && p[0] <= 'z') ||
       (p[0] >= 'A' && p[0] <= 'Z')) &&
    p[1] == ':') {
   p += 2;
  }

  while (p[0] == '/' || p[0] == '\\') {
   if (p[1] == '.' && p[2] == '.' &&
    (p[3] == '/' || p[3] == '\\')) {
    p += 3;

   } else
    p += 1;
  }
 } while (rp != p);
 return (p);
}
