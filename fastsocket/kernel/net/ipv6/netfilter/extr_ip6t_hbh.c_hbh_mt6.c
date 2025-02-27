
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct ipv6_opt_hdr {int hdrlen; } ;
typedef struct ipv6_opt_hdr u8 ;
typedef int u16 ;
struct xt_match_param {int* hotdrop; TYPE_1__* match; struct ip6t_opts* matchinfo; } ;
struct sk_buff {unsigned int len; } ;
struct ip6t_opts {unsigned int hdrlen; int flags; int invflags; unsigned int optsnr; int* opts; } ;
typedef int _opttype ;
typedef int _optsh ;
typedef int _optlen ;
struct TYPE_2__ {int data; } ;


 int ENOENT ;
 int IP6T_OPTS_INV_LEN ;
 int IP6T_OPTS_LEN ;
 int IP6T_OPTS_OPTS ;
 int ipv6_find_hdr (struct sk_buff const*,unsigned int*,int ,int *,int *) ;
 unsigned int ipv6_optlen (struct ipv6_opt_hdr const*) ;
 int pr_debug (char*,...) ;
 void* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct ipv6_opt_hdr*) ;

__attribute__((used)) static bool
hbh_mt6(const struct sk_buff *skb, const struct xt_match_param *par)
{
 struct ipv6_opt_hdr _optsh;
 const struct ipv6_opt_hdr *oh;
 const struct ip6t_opts *optinfo = par->matchinfo;
 unsigned int temp;
 unsigned int ptr = 0;
 unsigned int hdrlen = 0;
 bool ret = 0;
 u8 _opttype;
 u8 _optlen;
 const u_int8_t *tp = ((void*)0);
 const u_int8_t *lp = ((void*)0);
 unsigned int optlen;
 int err;

 err = ipv6_find_hdr(skb, &ptr, par->match->data, ((void*)0), ((void*)0));
 if (err < 0) {
  if (err != -ENOENT)
   *par->hotdrop = 1;
  return 0;
 }

 oh = skb_header_pointer(skb, ptr, sizeof(_optsh), &_optsh);
 if (oh == ((void*)0)) {
  *par->hotdrop = 1;
  return 0;
 }

 hdrlen = ipv6_optlen(oh);
 if (skb->len - ptr < hdrlen) {

  return 0;
 }

 pr_debug("IPv6 OPTS LEN %u %u ", hdrlen, oh->hdrlen);

 pr_debug("len %02X %04X %02X ",
   optinfo->hdrlen, hdrlen,
   (!(optinfo->flags & IP6T_OPTS_LEN) ||
    ((optinfo->hdrlen == hdrlen) ^
     !!(optinfo->invflags & IP6T_OPTS_INV_LEN))));

 ret = (oh != ((void*)0)) &&
       (!(optinfo->flags & IP6T_OPTS_LEN) ||
        ((optinfo->hdrlen == hdrlen) ^
  !!(optinfo->invflags & IP6T_OPTS_INV_LEN)));

 ptr += 2;
 hdrlen -= 2;
 if (!(optinfo->flags & IP6T_OPTS_OPTS)) {
  return ret;
 } else {
  pr_debug("Strict ");
  pr_debug("#%d ", optinfo->optsnr);
  for (temp = 0; temp < optinfo->optsnr; temp++) {

   if (hdrlen < 1)
    break;
   tp = skb_header_pointer(skb, ptr, sizeof(_opttype),
      &_opttype);
   if (tp == ((void*)0))
    break;


   if (*tp != (optinfo->opts[temp] & 0xFF00) >> 8) {
    pr_debug("Tbad %02X %02X\n", *tp,
      (optinfo->opts[temp] & 0xFF00) >> 8);
    return 0;
   } else {
    pr_debug("Tok ");
   }

   if (*tp) {
    u16 spec_len;


    if (hdrlen < 2)
     break;
    lp = skb_header_pointer(skb, ptr + 1,
       sizeof(_optlen),
       &_optlen);
    if (lp == ((void*)0))
     break;
    spec_len = optinfo->opts[temp] & 0x00FF;

    if (spec_len != 0x00FF && spec_len != *lp) {
     pr_debug("Lbad %02X %04X\n", *lp,
       spec_len);
     return 0;
    }
    pr_debug("Lok ");
    optlen = *lp + 2;
   } else {
    pr_debug("Pad1\n");
    optlen = 1;
   }


   pr_debug("len%04X \n", optlen);

   if ((ptr > skb->len - optlen || hdrlen < optlen) &&
       temp < optinfo->optsnr - 1) {
    pr_debug("new pointer is too large! \n");
    break;
   }
   ptr += optlen;
   hdrlen -= optlen;
  }
  if (temp == optinfo->optsnr)
   return ret;
  else
   return 0;
 }

 return 0;
}
