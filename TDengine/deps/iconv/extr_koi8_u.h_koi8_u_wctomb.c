
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* koi8_u_page00 ;
 unsigned char* koi8_u_page04 ;
 unsigned char* koi8_u_page22 ;
 unsigned char* koi8_u_page23 ;
 unsigned char* koi8_u_page25 ;

__attribute__((used)) static int
koi8_u_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x0080) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x00f8)
    c = koi8_u_page00[wc-0x00a0];
  else if (wc >= 0x0400 && wc < 0x0498)
    c = koi8_u_page04[wc-0x0400];
  else if (wc >= 0x2218 && wc < 0x2268)
    c = koi8_u_page22[wc-0x2218];
  else if (wc >= 0x2320 && wc < 0x2328)
    c = koi8_u_page23[wc-0x2320];
  else if (wc >= 0x2500 && wc < 0x25a8)
    c = koi8_u_page25[wc-0x2500];
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
