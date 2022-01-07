
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline size_t php_utf32_utf8(unsigned char *buf, unsigned k)
{
 size_t retval = 0;



 if (k < 0x80) {
  buf[0] = k;
  retval = 1;
 } else if (k < 0x800) {
  buf[0] = 0xc0 | (k >> 6);
  buf[1] = 0x80 | (k & 0x3f);
  retval = 2;
 } else if (k < 0x10000) {
  buf[0] = 0xe0 | (k >> 12);
  buf[1] = 0x80 | ((k >> 6) & 0x3f);
  buf[2] = 0x80 | (k & 0x3f);
  retval = 3;
 } else {
  buf[0] = 0xf0 | (k >> 18);
  buf[1] = 0x80 | ((k >> 12) & 0x3f);
  buf[2] = 0x80 | ((k >> 6) & 0x3f);
  buf[3] = 0x80 | (k & 0x3f);
  retval = 4;
 }


 return retval;
}
