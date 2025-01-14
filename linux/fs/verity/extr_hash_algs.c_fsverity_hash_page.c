
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct merkle_tree_params {scalar_t__ block_size; scalar_t__ hashstate; } ;
struct inode {int dummy; } ;
struct ahash_request {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int DECLARE_CRYPTO_WAIT (int ) ;
 int EINVAL ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int ahash_request_set_callback (struct ahash_request*,int,int ,int *) ;
 int ahash_request_set_crypt (struct ahash_request*,struct scatterlist*,int *,scalar_t__) ;
 int crypto_ahash_digest (struct ahash_request*) ;
 int crypto_ahash_finup (struct ahash_request*) ;
 int crypto_ahash_import (struct ahash_request*,scalar_t__) ;
 int crypto_req_done ;
 int crypto_wait_req (int,int *) ;
 int fsverity_err (struct inode const*,char*,int) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_page (struct scatterlist*,struct page*,scalar_t__,int ) ;
 int wait ;

int fsverity_hash_page(const struct merkle_tree_params *params,
         const struct inode *inode,
         struct ahash_request *req, struct page *page, u8 *out)
{
 struct scatterlist sg;
 DECLARE_CRYPTO_WAIT(wait);
 int err;

 if (WARN_ON(params->block_size != PAGE_SIZE))
  return -EINVAL;

 sg_init_table(&sg, 1);
 sg_set_page(&sg, page, PAGE_SIZE, 0);
 ahash_request_set_callback(req, CRYPTO_TFM_REQ_MAY_SLEEP |
     CRYPTO_TFM_REQ_MAY_BACKLOG,
       crypto_req_done, &wait);
 ahash_request_set_crypt(req, &sg, out, PAGE_SIZE);

 if (params->hashstate) {
  err = crypto_ahash_import(req, params->hashstate);
  if (err) {
   fsverity_err(inode,
         "Error %d importing hash state", err);
   return err;
  }
  err = crypto_ahash_finup(req);
 } else {
  err = crypto_ahash_digest(req);
 }

 err = crypto_wait_req(err, &wait);
 if (err)
  fsverity_err(inode, "Error %d computing page hash", err);
 return err;
}
