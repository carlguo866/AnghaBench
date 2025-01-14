
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FZ_REPLACEMENT_CHARACTER ;

__attribute__((used)) static int
rune_from_utf16be(int *out, const unsigned char *s, const unsigned char *end)
{
 if (s + 2 <= end)
 {
  int a = s[0] << 8 | s[1];
  if (a >= 0xD800 && a <= 0xDFFF && s + 4 <= end)
  {
   int b = s[2] << 8 | s[3];
   *out = ((a - 0xD800) << 10) + (b - 0xDC00) + 0x10000;
   return 4;
  }
  *out = a;
  return 2;
 }
 *out = FZ_REPLACEMENT_CHARACTER;
 return 1;
}
