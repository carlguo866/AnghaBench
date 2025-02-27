
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct device {int dummy; } ;
struct TYPE_14__ {int cra_driver_name; } ;
struct TYPE_17__ {TYPE_5__ base; } ;
struct TYPE_13__ {scalar_t__ class1_alg_type; } ;
struct caam_skcipher_alg {int registered; TYPE_8__ skcipher; TYPE_4__ caam; } ;
struct caam_drv_private {int era; TYPE_3__* ctrl; int qi_present; } ;
struct TYPE_16__ {int cra_driver_name; } ;
struct TYPE_18__ {unsigned int maxauthsize; TYPE_7__ base; } ;
struct TYPE_15__ {scalar_t__ class1_alg_type; scalar_t__ class2_alg_type; } ;
struct caam_aead_alg {int registered; TYPE_9__ aead; TYPE_6__ caam; } ;
struct TYPE_11__ {int desa; int mdha; int aesa; } ;
struct TYPE_10__ {int cha_num_ls; int cha_id_ls; } ;
struct TYPE_12__ {TYPE_2__ vreg; TYPE_1__ perfmon; } ;


 int ARRAY_SIZE (void*) ;
 scalar_t__ CHA_ID_LS_AES_MASK ;
 scalar_t__ CHA_ID_LS_DES_MASK ;
 scalar_t__ CHA_ID_LS_DES_SHIFT ;
 scalar_t__ CHA_ID_LS_MD_MASK ;
 scalar_t__ CHA_ID_LS_MD_SHIFT ;
 scalar_t__ CHA_VER_NUM_MASK ;
 scalar_t__ CHA_VER_VID_AES_LP ;
 scalar_t__ CHA_VER_VID_MASK ;
 scalar_t__ CHA_VER_VID_MD_LP256 ;
 scalar_t__ CHA_VER_VID_SHIFT ;
 scalar_t__ OP_ALG_AAI_GCM ;
 scalar_t__ OP_ALG_AAI_MASK ;
 scalar_t__ OP_ALG_ALGSEL_3DES ;
 scalar_t__ OP_ALG_ALGSEL_AES ;
 scalar_t__ OP_ALG_ALGSEL_DES ;
 scalar_t__ OP_ALG_ALGSEL_MASK ;
 unsigned int SHA256_DIGEST_SIZE ;
 unsigned int SHA512_DIGEST_SIZE ;
 int caam_aead_alg_init (struct caam_aead_alg*) ;
 scalar_t__ caam_dpaa2 ;
 int caam_skcipher_alg_init (struct caam_skcipher_alg*) ;
 int crypto_register_aead (TYPE_9__*) ;
 int crypto_register_skcipher (TYPE_8__*) ;
 struct caam_drv_private* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*,int ) ;
 void* driver_aeads ;
 void* driver_algs ;
 int pr_warn (char*,int ) ;
 scalar_t__ rd_reg32 (int *) ;

int caam_qi_algapi_init(struct device *ctrldev)
{
 struct caam_drv_private *priv = dev_get_drvdata(ctrldev);
 int i = 0, err = 0;
 u32 aes_vid, aes_inst, des_inst, md_vid, md_inst;
 unsigned int md_limit = SHA512_DIGEST_SIZE;
 bool registered = 0;


 if (!priv->qi_present || caam_dpaa2)
  return 0;





 if (priv->era < 10) {
  u32 cha_vid, cha_inst;

  cha_vid = rd_reg32(&priv->ctrl->perfmon.cha_id_ls);
  aes_vid = cha_vid & CHA_ID_LS_AES_MASK;
  md_vid = (cha_vid & CHA_ID_LS_MD_MASK) >> CHA_ID_LS_MD_SHIFT;

  cha_inst = rd_reg32(&priv->ctrl->perfmon.cha_num_ls);
  des_inst = (cha_inst & CHA_ID_LS_DES_MASK) >>
      CHA_ID_LS_DES_SHIFT;
  aes_inst = cha_inst & CHA_ID_LS_AES_MASK;
  md_inst = (cha_inst & CHA_ID_LS_MD_MASK) >> CHA_ID_LS_MD_SHIFT;
 } else {
  u32 aesa, mdha;

  aesa = rd_reg32(&priv->ctrl->vreg.aesa);
  mdha = rd_reg32(&priv->ctrl->vreg.mdha);

  aes_vid = (aesa & CHA_VER_VID_MASK) >> CHA_VER_VID_SHIFT;
  md_vid = (mdha & CHA_VER_VID_MASK) >> CHA_VER_VID_SHIFT;

  des_inst = rd_reg32(&priv->ctrl->vreg.desa) & CHA_VER_NUM_MASK;
  aes_inst = aesa & CHA_VER_NUM_MASK;
  md_inst = mdha & CHA_VER_NUM_MASK;
 }


 if (md_inst && md_vid == CHA_VER_VID_MD_LP256)
  md_limit = SHA256_DIGEST_SIZE;

 for (i = 0; i < ARRAY_SIZE(driver_algs); i++) {
  struct caam_skcipher_alg *t_alg = driver_algs + i;
  u32 alg_sel = t_alg->caam.class1_alg_type & OP_ALG_ALGSEL_MASK;


  if (!des_inst &&
      ((alg_sel == OP_ALG_ALGSEL_3DES) ||
       (alg_sel == OP_ALG_ALGSEL_DES)))
   continue;


  if (!aes_inst && (alg_sel == OP_ALG_ALGSEL_AES))
   continue;

  caam_skcipher_alg_init(t_alg);

  err = crypto_register_skcipher(&t_alg->skcipher);
  if (err) {
   dev_warn(ctrldev, "%s alg registration failed\n",
     t_alg->skcipher.base.cra_driver_name);
   continue;
  }

  t_alg->registered = 1;
  registered = 1;
 }

 for (i = 0; i < ARRAY_SIZE(driver_aeads); i++) {
  struct caam_aead_alg *t_alg = driver_aeads + i;
  u32 c1_alg_sel = t_alg->caam.class1_alg_type &
     OP_ALG_ALGSEL_MASK;
  u32 c2_alg_sel = t_alg->caam.class2_alg_type &
     OP_ALG_ALGSEL_MASK;
  u32 alg_aai = t_alg->caam.class1_alg_type & OP_ALG_AAI_MASK;


  if (!des_inst &&
      ((c1_alg_sel == OP_ALG_ALGSEL_3DES) ||
       (c1_alg_sel == OP_ALG_ALGSEL_DES)))
   continue;


  if (!aes_inst && (c1_alg_sel == OP_ALG_ALGSEL_AES))
   continue;





  if (aes_vid == CHA_VER_VID_AES_LP && alg_aai == OP_ALG_AAI_GCM)
   continue;





  if (c2_alg_sel &&
      (!md_inst || (t_alg->aead.maxauthsize > md_limit)))
   continue;

  caam_aead_alg_init(t_alg);

  err = crypto_register_aead(&t_alg->aead);
  if (err) {
   pr_warn("%s alg registration failed\n",
    t_alg->aead.base.cra_driver_name);
   continue;
  }

  t_alg->registered = 1;
  registered = 1;
 }

 if (registered)
  dev_info(ctrldev, "algorithms registered in /proc/crypto\n");

 return err;
}
