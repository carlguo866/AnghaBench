
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int flags; } ;
struct xfrm_state {TYPE_1__ props; struct crypto_aead* data; } ;
struct scatterlist {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {scalar_t__ src; scalar_t__ dst; } ;
typedef int __be32 ;


 int XFRM_STATE_ESN ;
 int * esp_tmp_iv (struct crypto_aead*,void*,int) ;
 struct aead_request* esp_tmp_req (struct crypto_aead*,int *) ;
 int put_page (int ) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static void esp_ssg_unref(struct xfrm_state *x, void *tmp)
{
 struct crypto_aead *aead = x->data;
 int seqhilen = 0;
 u8 *iv;
 struct aead_request *req;
 struct scatterlist *sg;

 if (x->props.flags & XFRM_STATE_ESN)
  seqhilen += sizeof(__be32);

 iv = esp_tmp_iv(aead, tmp, seqhilen);
 req = esp_tmp_req(aead, iv);




 if (req->src != req->dst)
  for (sg = sg_next(req->src); sg; sg = sg_next(sg))
   put_page(sg_page(sg));
}
