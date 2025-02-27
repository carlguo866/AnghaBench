
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 unsigned short* hkscs2004_2uni_page87 ;
 unsigned short* hkscs2004_2uni_page8c ;
 unsigned short* hkscs2004_2uni_upages ;

__attribute__((used)) static int
hkscs2004_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c1 = s[0];
  if ((c1 == 0x87) || (c1 >= 0x8c && c1 <= 0x8d)) {
    if (n >= 2) {
      unsigned char c2 = s[1];
      if ((c2 >= 0x40 && c2 < 0x7f) || (c2 >= 0xa1 && c2 < 0xff)) {
        unsigned int i = 157 * (c1 - 0x80) + (c2 - (c2 >= 0xa1 ? 0x62 : 0x40));
        ucs4_t wc = 0xfffd;
        unsigned short swc;
        if (i < 1884) {
          if (i < 1157)
            swc = hkscs2004_2uni_page87[i-1099],
            wc = hkscs2004_2uni_upages[swc>>8] | (swc & 0xff);
        } else {
          if (i < 2073)
            swc = hkscs2004_2uni_page8c[i-1884],
            wc = hkscs2004_2uni_upages[swc>>8] | (swc & 0xff);
        }
        if (wc != 0xfffd) {
          *pwc = wc;
          return 2;
        }
      }
      return RET_ILSEQ;
    }
    return RET_TOOFEW(0);
  }
  return RET_ILSEQ;
}
