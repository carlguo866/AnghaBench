
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ tls_enc_records; scalar_t__ iv_gen; unsigned char* iv; size_t ivlen; int tls_aad_len; int iv_state; scalar_t__ enc; int buf; TYPE_1__* hw; int key_set; } ;
struct TYPE_7__ {int (* oneshot ) (TYPE_2__*,int ,int ,unsigned char const*,size_t,unsigned char*,unsigned char*,size_t) ;int (* setiv ) (TYPE_2__*,unsigned char*,size_t) ;} ;
typedef TYPE_2__ PROV_GCM_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 size_t EVP_GCM_TLS_EXPLICIT_IV_LEN ;
 size_t EVP_GCM_TLS_TAG_LEN ;
 int EVP_R_TOO_MANY_RECORDS ;
 int IV_STATE_COPIED ;
 int IV_STATE_FINISHED ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 int UNINITIALISED_SIZET ;
 int ctr64_inc (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int stub1 (TYPE_2__*,unsigned char*,size_t) ;
 int stub2 (TYPE_2__*,unsigned char*,size_t) ;
 int stub3 (TYPE_2__*,int ,int ,unsigned char const*,size_t,unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int gcm_tls_cipher(PROV_GCM_CTX *ctx, unsigned char *out, size_t *padlen,
                          const unsigned char *in, size_t len)
{
    int rv = 0;
    size_t arg = EVP_GCM_TLS_EXPLICIT_IV_LEN;
    size_t plen = 0;
    unsigned char *tag = ((void*)0);

    if (!ctx->key_set)
        goto err;


    if (out != in || len < (EVP_GCM_TLS_EXPLICIT_IV_LEN + EVP_GCM_TLS_TAG_LEN))
        goto err;







    if (ctx->enc && ++ctx->tls_enc_records == 0) {
        ERR_raise(ERR_LIB_PROV, EVP_R_TOO_MANY_RECORDS);
        goto err;
    }

    if (ctx->iv_gen == 0)
        goto err;




    if (ctx->enc) {
        if (!ctx->hw->setiv(ctx, ctx->iv, ctx->ivlen))
            goto err;
        if (arg > ctx->ivlen)
            arg = ctx->ivlen;
        memcpy(out, ctx->iv + ctx->ivlen - arg, arg);




        ctr64_inc(ctx->iv + ctx->ivlen - 8);
    } else {
        memcpy(ctx->iv + ctx->ivlen - arg, out, arg);
        if (!ctx->hw->setiv(ctx, ctx->iv, ctx->ivlen))
            goto err;
    }
    ctx->iv_state = IV_STATE_COPIED;


    in += EVP_GCM_TLS_EXPLICIT_IV_LEN;
    out += EVP_GCM_TLS_EXPLICIT_IV_LEN;
    len -= EVP_GCM_TLS_EXPLICIT_IV_LEN + EVP_GCM_TLS_TAG_LEN;

    tag = ctx->enc ? out + len : (unsigned char *)in + len;
    if (!ctx->hw->oneshot(ctx, ctx->buf, ctx->tls_aad_len, in, len, out, tag,
                          EVP_GCM_TLS_TAG_LEN)) {
        if (!ctx->enc)
            OPENSSL_cleanse(out, len);
        goto err;
    }
    if (ctx->enc)
        plen = len + EVP_GCM_TLS_EXPLICIT_IV_LEN + EVP_GCM_TLS_TAG_LEN;
    else
        plen = len;

    rv = 1;
err:
    ctx->iv_state = IV_STATE_FINISHED;
    ctx->tls_aad_len = UNINITIALISED_SIZET;
    *padlen = plen;
    return rv;
}
