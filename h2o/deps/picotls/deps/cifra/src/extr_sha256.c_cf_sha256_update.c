
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int npartial; int partial; } ;
typedef TYPE_1__ cf_sha256_context ;


 int cf_blockwise_accumulate (int ,int *,int,void const*,size_t,int ,TYPE_1__*) ;
 int sha256_update_block ;

void cf_sha256_update(cf_sha256_context *ctx, const void *data, size_t nbytes)
{
  cf_blockwise_accumulate(ctx->partial, &ctx->npartial, sizeof ctx->partial,
                          data, nbytes,
                          sha256_update_block, ctx);
}
