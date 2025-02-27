
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_2__* gss_buffer_t ;
typedef TYPE_3__* crypto_ctx_t ;
struct TYPE_16__ {int output_size; } ;
struct TYPE_13__ {void** ikey; } ;
struct TYPE_15__ {int flags; int digest_size; TYPE_8__* di; int keylen; void** ckey; TYPE_1__ ks; int lock; } ;
struct TYPE_14__ {int value; int length; } ;


 int CRYPTO_KS_ALLOCED ;
 int GSS_RCV ;
 int GSS_SND ;
 int cc_key_schedule_create (TYPE_3__*) ;
 int cchmac_di_decl (TYPE_8__*,int ) ;
 int cchmac_final (TYPE_8__*,int ,int *) ;
 int cchmac_init (TYPE_8__*,int ,int ,void*) ;
 int cchmac_update (TYPE_8__*,int ,int ,int ) ;
 int hmac_ctx ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 scalar_t__ memcmp (int *,int *,int ) ;
 int memcpy (int *,int *,int ) ;

int
krb5_mic(crypto_ctx_t ctx, gss_buffer_t header, gss_buffer_t bp, gss_buffer_t trailer, uint8_t *mic, int *verify, int ikey, int reverse)
{
 uint8_t digest[ctx->di->output_size];
 cchmac_di_decl(ctx->di, hmac_ctx);
 int kdx = (verify == ((void*)0)) ? (reverse ? GSS_RCV : GSS_SND) : (reverse ? GSS_SND : GSS_RCV);
 void *key2use;

 if (ikey) {
  if (!(ctx->flags & CRYPTO_KS_ALLOCED)) {
   lck_mtx_lock(ctx->lock);
   if (!(ctx->flags & CRYPTO_KS_ALLOCED)) {
    cc_key_schedule_create(ctx);
   }
   ctx->flags |= CRYPTO_KS_ALLOCED;
   lck_mtx_unlock(ctx->lock);
  }
  key2use = ctx->ks.ikey[kdx];
 } else {
  key2use = ctx->ckey[kdx];
 }

 cchmac_init(ctx->di, hmac_ctx, ctx->keylen, key2use);

 if (header) {
  cchmac_update(ctx->di, hmac_ctx, header->length, header->value);
 }

 cchmac_update(ctx->di, hmac_ctx, bp->length, bp->value);

 if (trailer) {
  cchmac_update(ctx->di, hmac_ctx, trailer->length, trailer->value);
 }

 cchmac_final(ctx->di, hmac_ctx, digest);

 if (verify) {
   *verify = (memcmp(mic, digest, ctx->digest_size) == 0);
 }
 else
  memcpy(mic, digest, ctx->digest_size);

 return (0);
}
