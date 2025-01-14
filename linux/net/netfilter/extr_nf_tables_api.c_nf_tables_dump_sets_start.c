
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_ctx {int dummy; } ;
struct netlink_callback {struct nft_ctx* data; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct nft_ctx* kmemdup (struct nft_ctx*,int,int ) ;

__attribute__((used)) static int nf_tables_dump_sets_start(struct netlink_callback *cb)
{
 struct nft_ctx *ctx_dump = ((void*)0);

 ctx_dump = kmemdup(cb->data, sizeof(*ctx_dump), GFP_ATOMIC);
 if (ctx_dump == ((void*)0))
  return -ENOMEM;

 cb->data = ctx_dump;
 return 0;
}
