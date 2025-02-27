
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_hash_export_s {int incr_hash; int hash_carry_len; int hash_carry; int is_sw_hmac; int total_sent; int total_todo; } ;
struct iproc_reqctx_s {int incr_hash; int hash_carry_len; int hash_carry; int is_sw_hmac; int total_sent; int total_todo; } ;
struct ahash_request {int dummy; } ;


 struct iproc_reqctx_s* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int ahash_import(struct ahash_request *req, const void *in)
{
 struct iproc_reqctx_s *rctx = ahash_request_ctx(req);
 struct spu_hash_export_s *spu_exp = (struct spu_hash_export_s *)in;

 rctx->total_todo = spu_exp->total_todo;
 rctx->total_sent = spu_exp->total_sent;
 rctx->is_sw_hmac = spu_exp->is_sw_hmac;
 memcpy(rctx->hash_carry, spu_exp->hash_carry, sizeof(rctx->hash_carry));
 rctx->hash_carry_len = spu_exp->hash_carry_len;
 memcpy(rctx->incr_hash, spu_exp->incr_hash, sizeof(rctx->incr_hash));

 return 0;
}
