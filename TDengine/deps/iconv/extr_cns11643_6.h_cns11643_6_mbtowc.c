
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 unsigned short* cns11643_6_2uni_page21 ;
 unsigned short* cns11643_6_2uni_upages ;

__attribute__((used)) static int
cns11643_6_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c1 = s[0];
  if ((c1 >= 0x21 && c1 <= 0x64)) {
    if (n >= 2) {
      unsigned char c2 = s[1];
      if (c2 >= 0x21 && c2 < 0x7f) {
        unsigned int i = 94 * (c1 - 0x21) + (c2 - 0x21);
        ucs4_t wc = 0xfffd;
        unsigned short swc;
        {
          if (i < 6388)
            swc = cns11643_6_2uni_page21[i],
            wc = cns11643_6_2uni_upages[swc>>8] | (swc & 0xff);
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
