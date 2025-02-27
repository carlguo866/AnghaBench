
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int extradata_size; int extradata; } ;
struct TYPE_10__ {TYPE_1__* codec; } ;
struct TYPE_9__ {int (* split_fragment ) (TYPE_2__*,int *,int) ;} ;
typedef int CodedBitstreamFragment ;
typedef TYPE_2__ CodedBitstreamContext ;
typedef TYPE_3__ AVCodecParameters ;


 int cbs_fill_fragment_data (TYPE_2__*,int *,int ,int ) ;
 int cbs_read_fragment_content (TYPE_2__*,int *) ;
 int stub1 (TYPE_2__*,int *,int) ;

int ff_cbs_read_extradata(CodedBitstreamContext *ctx,
                          CodedBitstreamFragment *frag,
                          const AVCodecParameters *par)
{
    int err;

    err = cbs_fill_fragment_data(ctx, frag, par->extradata,
                                 par->extradata_size);
    if (err < 0)
        return err;

    err = ctx->codec->split_fragment(ctx, frag, 1);
    if (err < 0)
        return err;

    return cbs_read_fragment_content(ctx, frag);
}
