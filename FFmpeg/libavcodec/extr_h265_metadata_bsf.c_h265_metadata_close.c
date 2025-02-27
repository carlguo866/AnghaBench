
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int cbc; int access_unit; } ;
typedef TYPE_1__ H265MetadataContext ;
typedef TYPE_2__ AVBSFContext ;


 int ff_cbs_close (int *) ;
 int ff_cbs_fragment_free (int ,int *) ;

__attribute__((used)) static void h265_metadata_close(AVBSFContext *bsf)
{
    H265MetadataContext *ctx = bsf->priv_data;

    ff_cbs_fragment_free(ctx->cbc, &ctx->access_unit);
    ff_cbs_close(&ctx->cbc);
}
