
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 unsigned short* cp936ext_page01 ;
 unsigned short* cp936ext_page02 ;
 unsigned short* cp936ext_pagefe ;

__attribute__((used)) static int
cp936ext_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  if (n >= 2) {
    unsigned short c = 0;
    if (wc >= 0x0140 && wc < 0x0150)
      c = cp936ext_page01[wc-0x0140];
    else if (wc >= 0x0250 && wc < 0x0268)
      c = cp936ext_page02[wc-0x0250];
    else if (wc >= 0xfe30 && wc < 0xfe48)
      c = cp936ext_pagefe[wc-0xfe30];
    if (c != 0) {
      r[0] = (c >> 8); r[1] = (c & 0xff);
      return 2;
    }
    return RET_ILUNI;
  }
  return RET_TOOSMALL;
}
