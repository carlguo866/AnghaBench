
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* errmsg; } ;
typedef TYPE_1__ mm_recover_ctx ;



const char *mm_recover_last_error(mm_recover_ctx *ctx)
{
    return ctx->errmsg;
}
