
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int8_t ;
typedef unsigned int u_int16_t ;
struct tcphdr {int doff; } ;
typedef struct tcphdr u8 ;
struct xt_tcpmss_match_info {unsigned int mss_min; unsigned int mss_max; int invert; } ;
struct xt_action_param {int hotdrop; scalar_t__ thoff; struct xt_tcpmss_match_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
typedef int _tcph ;


 unsigned int TCPOLEN_MSS ;
 unsigned int const TCPOPT_MSS ;
 void* skb_header_pointer (struct sk_buff const*,scalar_t__,unsigned int,struct tcphdr*) ;

__attribute__((used)) static bool
tcpmss_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_tcpmss_match_info *info = par->matchinfo;
 const struct tcphdr *th;
 struct tcphdr _tcph;

 const u_int8_t *op;
 u8 _opt[15 * 4 - sizeof(_tcph)];
 unsigned int i, optlen;


 th = skb_header_pointer(skb, par->thoff, sizeof(_tcph), &_tcph);
 if (th == ((void*)0))
  goto dropit;


 if (th->doff*4 < sizeof(*th))
  goto dropit;

 optlen = th->doff*4 - sizeof(*th);
 if (!optlen)
  goto out;


 op = skb_header_pointer(skb, par->thoff + sizeof(*th), optlen, _opt);
 if (op == ((void*)0))
  goto dropit;

 for (i = 0; i < optlen; ) {
  if (op[i] == TCPOPT_MSS
      && (optlen - i) >= TCPOLEN_MSS
      && op[i+1] == TCPOLEN_MSS) {
   u_int16_t mssval;

   mssval = (op[i+2] << 8) | op[i+3];

   return (mssval >= info->mss_min &&
    mssval <= info->mss_max) ^ info->invert;
  }
  if (op[i] < 2)
   i++;
  else
   i += op[i+1] ? : 1;
 }
out:
 return info->invert;

dropit:
 par->hotdrop = 1;
 return 0;
}
