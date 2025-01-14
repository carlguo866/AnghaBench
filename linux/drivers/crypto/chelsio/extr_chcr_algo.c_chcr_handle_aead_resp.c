
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct chcr_dev {int dummy; } ;
struct chcr_aead_reqctx {scalar_t__ verify; } ;
struct TYPE_3__ {int (* complete ) (TYPE_1__*,int) ;} ;
struct aead_request {TYPE_1__ base; } ;
struct TYPE_4__ {struct chcr_dev* dev; } ;


 scalar_t__ VERIFY_HW ;
 scalar_t__ VERIFY_SW ;
 TYPE_2__* a_ctx (struct crypto_aead*) ;
 struct chcr_aead_reqctx* aead_request_ctx (struct aead_request*) ;
 int chcr_aead_common_exit (struct aead_request*) ;
 int chcr_dec_wrcount (struct chcr_dev*) ;
 int chcr_verify_tag (struct aead_request*,unsigned char*,int*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static inline int chcr_handle_aead_resp(struct aead_request *req,
      unsigned char *input,
      int err)
{
 struct chcr_aead_reqctx *reqctx = aead_request_ctx(req);
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct chcr_dev *dev = a_ctx(tfm)->dev;

 chcr_aead_common_exit(req);
 if (reqctx->verify == VERIFY_SW) {
  chcr_verify_tag(req, input, &err);
  reqctx->verify = VERIFY_HW;
 }
 chcr_dec_wrcount(dev);
 req->base.complete(&req->base, err);

 return err;
}
