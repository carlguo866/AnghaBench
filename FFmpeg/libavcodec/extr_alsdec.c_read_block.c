
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__* shift_lsbs; } ;
struct TYPE_10__ {int mc_coding; } ;
struct TYPE_11__ {scalar_t__ js_switch; TYPE_1__ sconf; int gb; } ;
typedef int GetBitContext ;
typedef TYPE_1__ ALSSpecificConfig ;
typedef TYPE_2__ ALSDecContext ;
typedef TYPE_3__ ALSBlockData ;


 int align_get_bits (int *) ;
 scalar_t__ get_bits1 (int *) ;
 int read_const_block_data (TYPE_2__*,TYPE_3__*) ;
 int read_var_block_data (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int read_block(ALSDecContext *ctx, ALSBlockData *bd)
{
    int ret;
    GetBitContext *gb = &ctx->gb;
    ALSSpecificConfig *sconf = &ctx->sconf;

    *bd->shift_lsbs = 0;

    if (get_bits1(gb)) {
        ret = read_var_block_data(ctx, bd);
    } else {
        ret = read_const_block_data(ctx, bd);
    }

    if (!sconf->mc_coding || ctx->js_switch)
        align_get_bits(gb);

    return ret;
}
