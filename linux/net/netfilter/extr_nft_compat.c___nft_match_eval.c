
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_match {int (* match ) (struct sk_buff*,struct xt_action_param*) ;} ;
struct xt_action_param {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int code; } ;
struct nft_regs {TYPE_2__ verdict; } ;
struct TYPE_4__ {scalar_t__ hotdrop; } ;
struct nft_pktinfo {TYPE_1__ xt; struct sk_buff* skb; } ;
struct nft_expr {TYPE_3__* ops; } ;
struct TYPE_6__ {struct xt_match* data; } ;


 int NFT_BREAK ;
 int NFT_CONTINUE ;
 int NF_DROP ;
 int nft_compat_set_par (struct xt_action_param*,struct xt_match*,void*) ;
 int stub1 (struct sk_buff*,struct xt_action_param*) ;

__attribute__((used)) static void __nft_match_eval(const struct nft_expr *expr,
        struct nft_regs *regs,
        const struct nft_pktinfo *pkt,
        void *info)
{
 struct xt_match *match = expr->ops->data;
 struct sk_buff *skb = pkt->skb;
 bool ret;

 nft_compat_set_par((struct xt_action_param *)&pkt->xt, match, info);

 ret = match->match(skb, (struct xt_action_param *)&pkt->xt);

 if (pkt->xt.hotdrop) {
  regs->verdict.code = NF_DROP;
  return;
 }

 switch (ret ? 1 : 0) {
 case 1:
  regs->verdict.code = NFT_CONTINUE;
  break;
 case 0:
  regs->verdict.code = NFT_BREAK;
  break;
 }
}
