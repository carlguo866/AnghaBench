
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* cp863_page00 ;
 unsigned char* cp863_page03 ;
 unsigned char* cp863_page22 ;
 unsigned char* cp863_page23 ;
 unsigned char* cp863_page25 ;

__attribute__((used)) static int
cp863_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x0080) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x0100)
    c = cp863_page00[wc-0x00a0];
  else if (wc == 0x0192)
    c = 0x9f;
  else if (wc >= 0x0390 && wc < 0x03c8)
    c = cp863_page03[wc-0x0390];
  else if (wc == 0x2017)
    c = 0x8d;
  else if (wc == 0x207f)
    c = 0xfc;
  else if (wc >= 0x2218 && wc < 0x2268)
    c = cp863_page22[wc-0x2218];
  else if (wc >= 0x2310 && wc < 0x2328)
    c = cp863_page23[wc-0x2310];
  else if (wc >= 0x2500 && wc < 0x25a8)
    c = cp863_page25[wc-0x2500];
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
