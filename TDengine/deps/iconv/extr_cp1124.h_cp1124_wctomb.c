
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* cp1124_page00 ;
 unsigned char* cp1124_page04 ;

__attribute__((used)) static int
cp1124_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x00a0) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x00b0)
    c = cp1124_page00[wc-0x00a0];
  else if (wc >= 0x0400 && wc < 0x0498)
    c = cp1124_page04[wc-0x0400];
  else if (wc == 0x2116)
    c = 0xf0;
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
