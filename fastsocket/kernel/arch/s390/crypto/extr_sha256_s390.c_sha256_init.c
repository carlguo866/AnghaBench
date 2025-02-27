
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct s390_sha_ctx {int func; scalar_t__ count; int * state; } ;


 int KIMD_SHA_256 ;
 int SHA256_H0 ;
 int SHA256_H1 ;
 int SHA256_H2 ;
 int SHA256_H3 ;
 int SHA256_H4 ;
 int SHA256_H5 ;
 int SHA256_H6 ;
 int SHA256_H7 ;
 struct s390_sha_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha256_init(struct shash_desc *desc)
{
 struct s390_sha_ctx *sctx = shash_desc_ctx(desc);

 sctx->state[0] = SHA256_H0;
 sctx->state[1] = SHA256_H1;
 sctx->state[2] = SHA256_H2;
 sctx->state[3] = SHA256_H3;
 sctx->state[4] = SHA256_H4;
 sctx->state[5] = SHA256_H5;
 sctx->state[6] = SHA256_H6;
 sctx->state[7] = SHA256_H7;
 sctx->count = 0;
 sctx->func = KIMD_SHA_256;

 return 0;
}
