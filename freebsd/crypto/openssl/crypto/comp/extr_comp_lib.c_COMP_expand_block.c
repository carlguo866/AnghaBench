
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int expand_in; int expand_out; TYPE_1__* meth; } ;
struct TYPE_5__ {int (* expand ) (TYPE_2__*,unsigned char*,int,unsigned char*,int) ;} ;
typedef TYPE_2__ COMP_CTX ;


 int stub1 (TYPE_2__*,unsigned char*,int,unsigned char*,int) ;

int COMP_expand_block(COMP_CTX *ctx, unsigned char *out, int olen,
                      unsigned char *in, int ilen)
{
    int ret;

    if (ctx->meth->expand == ((void*)0)) {
        return -1;
    }
    ret = ctx->meth->expand(ctx, out, olen, in, ilen);
    if (ret > 0) {
        ctx->expand_in += ilen;
        ctx->expand_out += ret;
    }
    return ret;
}
