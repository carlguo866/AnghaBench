
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned char) ;

__attribute__((used)) static int extract_rom_name(char *dest, const unsigned char *src, int len)
{
 char *p = dest, s_old = 0x20;
 int i;

 for (i = len - 1; i >= 0; i--)
 {
  if (src[i^1] != ' ') break;
 }
 len = i + 1;

 for (i = 0; i < len; i++)
 {
  unsigned char s = src[i^1];
  if (s == 0x20 && s_old == 0x20) continue;
  else if (s >= 0x20 && s < 0x7f && s != '%')
  {
   *p++ = s;
  }
  else
  {
   sprintf(p, "%%%02x", s);
   p += 3;
  }
  s_old = s;
 }
 *p = 0;

 return p - dest;
}
