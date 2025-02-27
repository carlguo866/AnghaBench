
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pd_uinfo {TYPE_1__* async_req; } ;
struct crypto4xx_device {struct pd_uinfo* pdr_uinfo; struct ce_pd* pdr; } ;
struct ce_pd {int dummy; } ;
struct TYPE_2__ {int tfm; } ;


 scalar_t__ CRYPTO_ALG_TYPE_ABLKCIPHER ;
 int crypto4xx_ablkcipher_done (struct crypto4xx_device*,struct pd_uinfo*,struct ce_pd*) ;
 int crypto4xx_ahash_done (struct crypto4xx_device*,struct pd_uinfo*) ;
 scalar_t__ crypto_tfm_alg_type (int ) ;

__attribute__((used)) static u32 crypto4xx_pd_done(struct crypto4xx_device *dev, u32 idx)
{
 struct ce_pd *pd;
 struct pd_uinfo *pd_uinfo;

 pd = dev->pdr + sizeof(struct ce_pd)*idx;
 pd_uinfo = dev->pdr_uinfo + sizeof(struct pd_uinfo)*idx;
 if (crypto_tfm_alg_type(pd_uinfo->async_req->tfm) ==
   CRYPTO_ALG_TYPE_ABLKCIPHER)
  return crypto4xx_ablkcipher_done(dev, pd_uinfo, pd);
 else
  return crypto4xx_ahash_done(dev, pd_uinfo);
}
