
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int skey; int num_rounds; int * vtable; } ;
typedef TYPE_1__ br_aes_small_ctr_keys ;


 int br_aes_keysched (int ,void const*,size_t) ;
 int br_aes_small_ctr_vtable ;

void
br_aes_small_ctr_init(br_aes_small_ctr_keys *ctx,
 const void *key, size_t len)
{
 ctx->vtable = &br_aes_small_ctr_vtable;
 ctx->num_rounds = br_aes_keysched(ctx->skey, key, len);
}
