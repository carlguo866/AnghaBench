
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ucs4_t ;
typedef int conv_t ;


 scalar_t__* georgian_ps_2uni_1 ;
 scalar_t__* georgian_ps_2uni_2 ;

__attribute__((used)) static int
georgian_ps_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  if (c >= 0x80 && c < 0xa0)
    *pwc = (ucs4_t) georgian_ps_2uni_1[c-0x80];
  else if (c >= 0xc0 && c < 0xe6)
    *pwc = (ucs4_t) georgian_ps_2uni_2[c-0xc0];
  else
    *pwc = (ucs4_t) c;
  return 1;
}
