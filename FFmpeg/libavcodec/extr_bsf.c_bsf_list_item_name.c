
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* priv_data; } ;
struct TYPE_7__ {int nb_bsfs; char const* item_name; TYPE_2__** bsfs; } ;
struct TYPE_6__ {TYPE_1__* filter; } ;
struct TYPE_5__ {int name; } ;
typedef TYPE_3__ BSFListContext ;
typedef TYPE_4__ AVBSFContext ;
typedef int AVBPrint ;


 int av_bprint_finalize (int *,char const**) ;
 int av_bprint_init (int *,int,int) ;
 int av_bprintf (int *,char*,...) ;

__attribute__((used)) static const char *bsf_list_item_name(void *ctx)
{
    static const char *null_filter_name = "null";
    AVBSFContext *bsf_ctx = ctx;
    BSFListContext *lst = bsf_ctx->priv_data;

    if (!lst->nb_bsfs)
        return null_filter_name;

    if (!lst->item_name) {
        int i;
        AVBPrint bp;
        av_bprint_init(&bp, 16, 128);

        av_bprintf(&bp, "bsf_list(");
        for (i = 0; i < lst->nb_bsfs; i++)
            av_bprintf(&bp, i ? ",%s" : "%s", lst->bsfs[i]->filter->name);
        av_bprintf(&bp, ")");

        av_bprint_finalize(&bp, &lst->item_name);
    }

    return lst->item_name;
}
