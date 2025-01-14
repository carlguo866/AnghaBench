
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int * sigprovctx; } ;
struct TYPE_15__ {int * exchprovctx; } ;
struct TYPE_13__ {TYPE_1__ sig; TYPE_4__ kex; } ;
struct TYPE_16__ {TYPE_3__* pmeth; TYPE_2__ op; } ;
struct TYPE_14__ {int (* ctrl_str ) (TYPE_5__*,char const*,char const*) ;} ;
typedef TYPE_5__ EVP_PKEY_CTX ;


 int EVP_F_EVP_PKEY_CTX_CTRL_STR ;
 int EVP_PKEY_CTRL_MD ;
 scalar_t__ EVP_PKEY_CTX_IS_DERIVE_OP (TYPE_5__*) ;
 scalar_t__ EVP_PKEY_CTX_IS_SIGNATURE_OP (TYPE_5__*) ;
 int EVP_PKEY_CTX_md (TYPE_5__*,int ,int ,char const*) ;
 int EVP_PKEY_OP_TYPE_SIG ;
 int EVP_R_COMMAND_NOT_SUPPORTED ;
 int EVPerr (int ,int ) ;
 int legacy_ctrl_str_to_param (TYPE_5__*,char const*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (TYPE_5__*,char const*,char const*) ;

int EVP_PKEY_CTX_ctrl_str(EVP_PKEY_CTX *ctx,
                          const char *name, const char *value)
{
    if (ctx == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_CTX_CTRL_STR, EVP_R_COMMAND_NOT_SUPPORTED);
        return -2;
    }

    if ((EVP_PKEY_CTX_IS_DERIVE_OP(ctx) && ctx->op.kex.exchprovctx != ((void*)0))
            || (EVP_PKEY_CTX_IS_SIGNATURE_OP(ctx)
                && ctx->op.sig.sigprovctx != ((void*)0)))
        return legacy_ctrl_str_to_param(ctx, name, value);

    if (!ctx || !ctx->pmeth || !ctx->pmeth->ctrl_str) {
        EVPerr(EVP_F_EVP_PKEY_CTX_CTRL_STR, EVP_R_COMMAND_NOT_SUPPORTED);
        return -2;
    }
    if (strcmp(name, "digest") == 0)
        return EVP_PKEY_CTX_md(ctx, EVP_PKEY_OP_TYPE_SIG, EVP_PKEY_CTRL_MD,
                               value);
    return ctx->pmeth->ctrl_str(ctx, name, value);
}
