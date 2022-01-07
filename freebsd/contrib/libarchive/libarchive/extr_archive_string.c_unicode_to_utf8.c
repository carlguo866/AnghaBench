
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int UNICODE_MAX ;
 int UNICODE_R_CHAR ;

__attribute__((used)) static size_t
unicode_to_utf8(char *p, size_t remaining, uint32_t uc)
{
 char *_p = p;


 if (uc > UNICODE_MAX)
  uc = UNICODE_R_CHAR;

 if (uc <= 0x7f) {
  if (remaining == 0)
   return (0);
  *p++ = (char)uc;
 } else if (uc <= 0x7ff) {
  if (remaining < 2)
   return (0);
  *p++ = 0xc0 | ((uc >> 6) & 0x1f);
  *p++ = 0x80 | (uc & 0x3f);
 } else if (uc <= 0xffff) {
  if (remaining < 3)
   return (0);
  *p++ = 0xe0 | ((uc >> 12) & 0x0f);
  *p++ = 0x80 | ((uc >> 6) & 0x3f);
  *p++ = 0x80 | (uc & 0x3f);
 } else {
  if (remaining < 4)
   return (0);
  *p++ = 0xf0 | ((uc >> 18) & 0x07);
  *p++ = 0x80 | ((uc >> 12) & 0x3f);
  *p++ = 0x80 | ((uc >> 6) & 0x3f);
  *p++ = 0x80 | (uc & 0x3f);
 }
 return (p - _p);
}
