
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 int* cp874_2uni ;
 unsigned char* cp874_page0e ;
 unsigned char* cp874_page20 ;

__attribute__((used)) static int
cp1162_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x0080) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x0080 && wc < 0x00a0 && cp874_2uni[wc-0x0080] == 0xfffd)
    c = wc;
  else if (wc == 0x00a0)
    c = 0xa0;
  else if (wc >= 0x0e00 && wc < 0x0e60)
    c = cp874_page0e[wc-0x0e00];
  else if (wc >= 0x2010 && wc < 0x2028)
    c = cp874_page20[wc-0x2010];
  else if (wc == 0x20ac)
    c = 0x80;
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
