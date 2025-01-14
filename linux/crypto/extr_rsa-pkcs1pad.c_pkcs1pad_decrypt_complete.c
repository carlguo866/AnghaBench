
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {unsigned int dst_len; } ;
struct pkcs1pad_request {int* out_buf; TYPE_1__ child_req; } ;
struct pkcs1pad_ctx {int key_size; } ;
struct crypto_akcipher {int dummy; } ;
struct akcipher_request {unsigned int dst_len; int dst; } ;


 int EINVAL ;
 int EOVERFLOW ;
 struct pkcs1pad_request* akcipher_request_ctx (struct akcipher_request*) ;
 struct pkcs1pad_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 struct crypto_akcipher* crypto_akcipher_reqtfm (struct akcipher_request*) ;
 int kzfree (int*) ;
 int sg_copy_from_buffer (int ,int ,int*,unsigned int) ;
 int sg_nents_for_len (int ,unsigned int) ;

__attribute__((used)) static int pkcs1pad_decrypt_complete(struct akcipher_request *req, int err)
{
 struct crypto_akcipher *tfm = crypto_akcipher_reqtfm(req);
 struct pkcs1pad_ctx *ctx = akcipher_tfm_ctx(tfm);
 struct pkcs1pad_request *req_ctx = akcipher_request_ctx(req);
 unsigned int dst_len;
 unsigned int pos;
 u8 *out_buf;

 if (err)
  goto done;

 err = -EINVAL;
 dst_len = req_ctx->child_req.dst_len;
 if (dst_len < ctx->key_size - 1)
  goto done;

 out_buf = req_ctx->out_buf;
 if (dst_len == ctx->key_size) {
  if (out_buf[0] != 0x00)

   goto done;

  dst_len--;
  out_buf++;
 }

 if (out_buf[0] != 0x02)
  goto done;

 for (pos = 1; pos < dst_len; pos++)
  if (out_buf[pos] == 0x00)
   break;
 if (pos < 9 || pos == dst_len)
  goto done;
 pos++;

 err = 0;

 if (req->dst_len < dst_len - pos)
  err = -EOVERFLOW;
 req->dst_len = dst_len - pos;

 if (!err)
  sg_copy_from_buffer(req->dst,
    sg_nents_for_len(req->dst, req->dst_len),
    out_buf + pos, req->dst_len);

done:
 kzfree(req_ctx->out_buf);

 return err;
}
