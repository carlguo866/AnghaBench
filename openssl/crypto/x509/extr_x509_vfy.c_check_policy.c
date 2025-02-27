
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int (* verify_cb ) (int,TYPE_2__*) ;int * current_cert; TYPE_1__* param; void* error; int chain; scalar_t__ bare_ta_signed; int explicit_policy; int tree; scalar_t__ parent; } ;
typedef TYPE_2__ X509_STORE_CTX ;
struct TYPE_12__ {int ex_flags; } ;
typedef TYPE_3__ X509 ;
struct TYPE_10__ {int flags; int policies; } ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EXFLAG_INVALID_POLICY ;
 int X509_F_CHECK_POLICY ;
 int X509_PCY_TREE_FAILURE ;
 int X509_PCY_TREE_INTERNAL ;
 int X509_PCY_TREE_INVALID ;
 int X509_PCY_TREE_VALID ;
 int X509_V_ERR_INVALID_POLICY_EXTENSION ;
 void* X509_V_ERR_NO_EXPLICIT_POLICY ;
 void* X509_V_ERR_OUT_OF_MEM ;
 int X509_V_FLAG_NOTIFY_POLICY ;
 int X509_policy_check (int *,int *,int ,int ,int) ;
 int X509err (int ,int ) ;
 int sk_X509_num (int ) ;
 int sk_X509_pop (int ) ;
 int sk_X509_push (int ,int *) ;
 TYPE_3__* sk_X509_value (int ,int) ;
 int stub1 (int,TYPE_2__*) ;
 int stub2 (int,TYPE_2__*) ;
 int verify_cb_cert (TYPE_2__*,TYPE_3__*,int,int ) ;

__attribute__((used)) static int check_policy(X509_STORE_CTX *ctx)
{
    int ret;

    if (ctx->parent)
        return 1;
    if (ctx->bare_ta_signed && !sk_X509_push(ctx->chain, ((void*)0))) {
        X509err(X509_F_CHECK_POLICY, ERR_R_MALLOC_FAILURE);
        ctx->error = X509_V_ERR_OUT_OF_MEM;
        return 0;
    }
    ret = X509_policy_check(&ctx->tree, &ctx->explicit_policy, ctx->chain,
                            ctx->param->policies, ctx->param->flags);
    if (ctx->bare_ta_signed)
        sk_X509_pop(ctx->chain);

    if (ret == X509_PCY_TREE_INTERNAL) {
        X509err(X509_F_CHECK_POLICY, ERR_R_MALLOC_FAILURE);
        ctx->error = X509_V_ERR_OUT_OF_MEM;
        return 0;
    }

    if (ret == X509_PCY_TREE_INVALID) {
        int i;


        for (i = 1; i < sk_X509_num(ctx->chain); i++) {
            X509 *x = sk_X509_value(ctx->chain, i);

            if (!(x->ex_flags & EXFLAG_INVALID_POLICY))
                continue;
            if (!verify_cb_cert(ctx, x, i,
                                X509_V_ERR_INVALID_POLICY_EXTENSION))
                return 0;
        }
        return 1;
    }
    if (ret == X509_PCY_TREE_FAILURE) {
        ctx->current_cert = ((void*)0);
        ctx->error = X509_V_ERR_NO_EXPLICIT_POLICY;
        return ctx->verify_cb(0, ctx);
    }
    if (ret != X509_PCY_TREE_VALID) {
        X509err(X509_F_CHECK_POLICY, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (ctx->param->flags & X509_V_FLAG_NOTIFY_POLICY) {
        ctx->current_cert = ((void*)0);






        if (!ctx->verify_cb(2, ctx))
            return 0;
    }

    return 1;
}
