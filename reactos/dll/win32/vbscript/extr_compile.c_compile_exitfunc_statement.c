
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int func_end_label; } ;
typedef TYPE_1__ compile_ctx_t ;
typedef int HRESULT ;


 int E_FAIL ;
 int FIXME (char*) ;
 int exit_label (TYPE_1__*,int ) ;

__attribute__((used)) static HRESULT compile_exitfunc_statement(compile_ctx_t *ctx)
{
    if(!ctx->func_end_label) {
        FIXME("Exit Function outside Function?\n");
        return E_FAIL;
    }

    return exit_label(ctx, ctx->func_end_label);
}
