
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
typedef TYPE_1__ script_ctx_t ;



__attribute__((used)) static inline void script_addref(script_ctx_t *ctx)
{
    ctx->ref++;
}
