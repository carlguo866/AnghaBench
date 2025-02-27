
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* mac_greek_page00 ;
 unsigned char* mac_greek_page03 ;
 unsigned char* mac_greek_page20 ;
 unsigned char* mac_greek_page22 ;

__attribute__((used)) static int
mac_greek_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x0080) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x0100)
    c = mac_greek_page00[wc-0x00a0];
  else if (wc == 0x0153)
    c = 0xcf;
  else if (wc >= 0x0380 && wc < 0x03d0)
    c = mac_greek_page03[wc-0x0380];
  else if (wc >= 0x2010 && wc < 0x2038)
    c = mac_greek_page20[wc-0x2010];
  else if (wc == 0x2122)
    c = 0x93;
  else if (wc >= 0x2248 && wc < 0x2268)
    c = mac_greek_page22[wc-0x2248];
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
