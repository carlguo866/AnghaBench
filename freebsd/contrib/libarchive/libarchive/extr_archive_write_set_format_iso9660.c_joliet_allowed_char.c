
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
joliet_allowed_char(unsigned char high, unsigned char low)
{
 int utf16 = (high << 8) | low;

 if (utf16 <= 0x001F)
  return (0);

 switch (utf16) {
 case 0x002A:
 case 0x002F:
 case 0x003A:
 case 0x003B:
 case 0x003F:
 case 0x005C:
  return (0);
 }
 return (1);
}
