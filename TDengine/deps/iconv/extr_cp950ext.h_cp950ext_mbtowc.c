
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 unsigned short* cp950ext_2uni_pagef9 ;

__attribute__((used)) static int
cp950ext_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c1 = s[0];
  if ((c1 == 0xf9)) {
    if (n >= 2) {
      unsigned char c2 = s[1];
      if ((c2 >= 0x40 && c2 < 0x7f) || (c2 >= 0xa1 && c2 < 0xff)) {
        unsigned int i = 157 * (c1 - 0xa1) + (c2 - (c2 >= 0xa1 ? 0x62 : 0x40));
        unsigned short wc = 0xfffd;
        {
          if (i >= 13932 && i < 13973)
            wc = cp950ext_2uni_pagef9[i-13932];
        }
        if (wc != 0xfffd) {
          *pwc = (ucs4_t) wc;
          return 2;
        }
      }
      return RET_ILSEQ;
    }
    return RET_TOOFEW(0);
  }
  return RET_ILSEQ;
}
