
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_ctx {int flow_mode; } ;
struct aead_request {int dummy; } ;
struct TYPE_2__ {int op_type; } ;
struct aead_req_ctx {scalar_t__ is_single_pass; TYPE_1__ gen_ctx; } ;


 int DIN_HASH ;
 int DRV_CRYPTO_DIRECTION_ENCRYPT ;
 struct aead_req_ctx* aead_request_ctx (struct aead_request*) ;
 unsigned int cc_get_data_flow (int,int ,scalar_t__) ;
 int cc_proc_authen_desc (struct aead_request*,int ,struct cc_hw_desc*,unsigned int*,int) ;
 int cc_proc_cipher (struct aead_request*,struct cc_hw_desc*,unsigned int*,unsigned int) ;
 int cc_proc_cipher_desc (struct aead_request*,unsigned int,struct cc_hw_desc*,unsigned int*) ;
 int cc_proc_digest_desc (struct aead_request*,struct cc_hw_desc*,unsigned int*) ;
 int cc_proc_header_desc (struct aead_request*,struct cc_hw_desc*,unsigned int*) ;
 int cc_proc_scheme_desc (struct aead_request*,struct cc_hw_desc*,unsigned int*) ;
 int cc_set_cipher_desc (struct aead_request*,struct cc_hw_desc*,unsigned int*) ;
 int cc_set_hmac_desc (struct aead_request*,struct cc_hw_desc*,unsigned int*) ;
 struct cc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;

__attribute__((used)) static void cc_hmac_authenc(struct aead_request *req, struct cc_hw_desc desc[],
       unsigned int *seq_size)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct cc_aead_ctx *ctx = crypto_aead_ctx(tfm);
 struct aead_req_ctx *req_ctx = aead_request_ctx(req);
 int direct = req_ctx->gen_ctx.op_type;
 unsigned int data_flow_mode =
  cc_get_data_flow(direct, ctx->flow_mode,
     req_ctx->is_single_pass);

 if (req_ctx->is_single_pass) {



  cc_set_hmac_desc(req, desc, seq_size);
  cc_set_cipher_desc(req, desc, seq_size);
  cc_proc_header_desc(req, desc, seq_size);
  cc_proc_cipher_desc(req, data_flow_mode, desc, seq_size);
  cc_proc_scheme_desc(req, desc, seq_size);
  cc_proc_digest_desc(req, desc, seq_size);
  return;
 }






 if (direct == DRV_CRYPTO_DIRECTION_ENCRYPT) {

  cc_proc_cipher(req, desc, seq_size, data_flow_mode);

  cc_set_hmac_desc(req, desc, seq_size);
  cc_proc_authen_desc(req, DIN_HASH, desc, seq_size, direct);
  cc_proc_scheme_desc(req, desc, seq_size);
  cc_proc_digest_desc(req, desc, seq_size);

 } else {

  cc_set_hmac_desc(req, desc, seq_size);
  cc_proc_authen_desc(req, DIN_HASH, desc, seq_size, direct);
  cc_proc_scheme_desc(req, desc, seq_size);

  cc_proc_cipher(req, desc, seq_size, data_flow_mode);



  cc_proc_digest_desc(req, desc, seq_size);
 }
}
