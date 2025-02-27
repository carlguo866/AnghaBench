
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int global; } ;
typedef TYPE_1__ script_ctx_t ;
struct TYPE_12__ {scalar_t__ type; } ;
typedef TYPE_2__ exprval_t ;
typedef int HRESULT ;
typedef int DISPID ;
typedef int BSTR ;


 scalar_t__ EXPRVAL_INVALID ;
 scalar_t__ EXPRVAL_JSVAL ;
 scalar_t__ FAILED (int ) ;
 int JS_E_OBJECT_EXPECTED ;
 int WARN (char*) ;
 int exprval_release (TYPE_2__*) ;
 int exprval_set_disp_ref (TYPE_2__*,int ,int ) ;
 int exprval_set_exception (TYPE_2__*,int ) ;
 unsigned int fdexNameEnsure ;
 int identifier_eval (TYPE_1__*,int ,TYPE_2__*) ;
 int jsdisp_get_id (int ,int ,unsigned int,int *) ;
 int stack_push_exprval (TYPE_1__*,TYPE_2__*) ;
 int to_disp (int ) ;

__attribute__((used)) static HRESULT interp_identifier_ref(script_ctx_t *ctx, BSTR identifier, unsigned flags)
{
    exprval_t exprval;
    HRESULT hres;

    hres = identifier_eval(ctx, identifier, &exprval);
    if(FAILED(hres))
        return hres;

    if(exprval.type == EXPRVAL_INVALID && (flags & fdexNameEnsure)) {
        DISPID id;

        hres = jsdisp_get_id(ctx->global, identifier, fdexNameEnsure, &id);
        if(FAILED(hres))
            return hres;

        exprval_set_disp_ref(&exprval, to_disp(ctx->global), id);
    }

    if(exprval.type == EXPRVAL_JSVAL || exprval.type == EXPRVAL_INVALID) {
        WARN("invalid ref\n");
        exprval_release(&exprval);
        exprval_set_exception(&exprval, JS_E_OBJECT_EXPECTED);
    }

    return stack_push_exprval(ctx, &exprval);
}
