
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdr; } ;
struct talitos_edesc {TYPE_1__ desc; } ;
struct talitos_ctx {int desc_hdr_template; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;


 int DESC_HDR_MODE0_ENCRYPT ;
 scalar_t__ IS_ERR (struct talitos_edesc*) ;
 int PTR_ERR (struct talitos_edesc*) ;
 struct talitos_edesc* aead_edesc_alloc (struct aead_request*,int ) ;
 struct talitos_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int ipsec_esp (struct talitos_edesc*,struct aead_request*,int *,int ,int ) ;
 int ipsec_esp_encrypt_done ;

__attribute__((used)) static int aead_encrypt(struct aead_request *req)
{
 struct crypto_aead *authenc = crypto_aead_reqtfm(req);
 struct talitos_ctx *ctx = crypto_aead_ctx(authenc);
 struct talitos_edesc *edesc;


 edesc = aead_edesc_alloc(req, 0);
 if (IS_ERR(edesc))
  return PTR_ERR(edesc);


 edesc->desc.hdr = ctx->desc_hdr_template | DESC_HDR_MODE0_ENCRYPT;

 return ipsec_esp(edesc, req, ((void*)0), 0, ipsec_esp_encrypt_done);
}
