
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* cp1252_page01 ;
 unsigned char* cp1252_page02 ;
 unsigned char* cp1252_page20 ;

__attribute__((used)) static int
cp1252_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x0080) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x0100)
    c = wc;
  else if (wc >= 0x0150 && wc < 0x0198)
    c = cp1252_page01[wc-0x0150];
  else if (wc >= 0x02c0 && wc < 0x02e0)
    c = cp1252_page02[wc-0x02c0];
  else if (wc >= 0x2010 && wc < 0x2040)
    c = cp1252_page20[wc-0x2010];
  else if (wc == 0x20ac)
    c = 0x80;
  else if (wc == 0x2122)
    c = 0x99;
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
