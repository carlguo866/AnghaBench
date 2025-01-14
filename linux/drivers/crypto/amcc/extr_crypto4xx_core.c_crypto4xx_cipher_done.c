
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct skcipher_request {scalar_t__ iv; int dst; int cryptlen; } ;
struct scatterlist {int length; int offset; } ;
struct pd_uinfo {int state; TYPE_5__* sr_va; TYPE_4__* sa_va; struct scatterlist* dest_va; int async_req; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto4xx_device {TYPE_1__* core_dev; } ;
struct ce_pd {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_10__ {int save_iv; } ;
struct TYPE_7__ {scalar_t__ save_iv; scalar_t__ scatter; } ;
struct TYPE_8__ {TYPE_2__ bf; } ;
struct TYPE_9__ {TYPE_3__ sa_command_0; } ;
struct TYPE_6__ {int device; } ;


 int DMA_FROM_DEVICE ;
 int EINPROGRESS ;
 int PD_ENTRY_BUSY ;
 scalar_t__ SA_SAVE_IV ;
 int crypto4xx_copy_pkt_to_dst (struct crypto4xx_device*,struct ce_pd*,struct pd_uinfo*,int ,int ) ;
 int crypto4xx_memcpy_from_le32 (int *,int ,int ) ;
 int crypto4xx_ret_sg_desc (struct crypto4xx_device*,struct pd_uinfo*) ;
 int crypto_skcipher_ivsize (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int dma_map_page (int ,int ,int ,int ,int ) ;
 int sg_page (struct scatterlist*) ;
 struct skcipher_request* skcipher_request_cast (int ) ;
 int skcipher_request_complete (struct skcipher_request*,int ) ;

__attribute__((used)) static void crypto4xx_cipher_done(struct crypto4xx_device *dev,
         struct pd_uinfo *pd_uinfo,
         struct ce_pd *pd)
{
 struct skcipher_request *req;
 struct scatterlist *dst;
 dma_addr_t addr;

 req = skcipher_request_cast(pd_uinfo->async_req);

 if (pd_uinfo->sa_va->sa_command_0.bf.scatter) {
  crypto4xx_copy_pkt_to_dst(dev, pd, pd_uinfo,
       req->cryptlen, req->dst);
 } else {
  dst = pd_uinfo->dest_va;
  addr = dma_map_page(dev->core_dev->device, sg_page(dst),
        dst->offset, dst->length, DMA_FROM_DEVICE);
 }

 if (pd_uinfo->sa_va->sa_command_0.bf.save_iv == SA_SAVE_IV) {
  struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);

  crypto4xx_memcpy_from_le32((u32 *)req->iv,
   pd_uinfo->sr_va->save_iv,
   crypto_skcipher_ivsize(skcipher));
 }

 crypto4xx_ret_sg_desc(dev, pd_uinfo);

 if (pd_uinfo->state & PD_ENTRY_BUSY)
  skcipher_request_complete(req, -EINPROGRESS);
 skcipher_request_complete(req, 0);
}
