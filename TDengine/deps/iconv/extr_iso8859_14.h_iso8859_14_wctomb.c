
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* iso8859_14_page00 ;
 unsigned char* iso8859_14_page01_0 ;
 unsigned char* iso8859_14_page01_1 ;
 unsigned char* iso8859_14_page1e_0 ;
 unsigned char* iso8859_14_page1e_1 ;

__attribute__((used)) static int
iso8859_14_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x00a0) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x0100)
    c = iso8859_14_page00[wc-0x00a0];
  else if (wc >= 0x0108 && wc < 0x0128)
    c = iso8859_14_page01_0[wc-0x0108];
  else if (wc >= 0x0170 && wc < 0x0180)
    c = iso8859_14_page01_1[wc-0x0170];
  else if (wc >= 0x1e00 && wc < 0x1e88)
    c = iso8859_14_page1e_0[wc-0x1e00];
  else if (wc >= 0x1ef0 && wc < 0x1ef8)
    c = iso8859_14_page1e_1[wc-0x1ef0];
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
