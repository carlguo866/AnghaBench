
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_regs {int * data; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_ng_random {size_t dreg; } ;
struct nft_expr {int dummy; } ;


 struct nft_ng_random* nft_expr_priv (struct nft_expr const*) ;
 int nft_ng_random_gen (struct nft_ng_random*) ;

__attribute__((used)) static void nft_ng_random_eval(const struct nft_expr *expr,
          struct nft_regs *regs,
          const struct nft_pktinfo *pkt)
{
 struct nft_ng_random *priv = nft_expr_priv(expr);

 regs->data[priv->dreg] = nft_ng_random_gen(priv);
}
