
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar_t ;


 int assert (int ) ;
 int utf8_validate_cz (char const*) ;

__attribute__((used)) static int utf8_read_char(const char *s, uchar_t *out)
{
 const unsigned char *c = (const unsigned char*) s;

 assert(utf8_validate_cz(s));

 if (c[0] <= 0x7F) {

  *out = c[0];
  return 1;
 } else if (c[0] <= 0xDF) {

  *out = ((uchar_t)c[0] & 0x1F) << 6 |
         ((uchar_t)c[1] & 0x3F);
  return 2;
 } else if (c[0] <= 0xEF) {

  *out = ((uchar_t)c[0] & 0xF) << 12 |
         ((uchar_t)c[1] & 0x3F) << 6 |
         ((uchar_t)c[2] & 0x3F);
  return 3;
 } else {

  *out = ((uchar_t)c[0] & 0x7) << 18 |
         ((uchar_t)c[1] & 0x3F) << 12 |
         ((uchar_t)c[2] & 0x3F) << 6 |
         ((uchar_t)c[3] & 0x3F);
  return 4;
 }
}
