
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_ctx {int sw_cipher; void* mayverify; void* hmac_ctrl; } ;


 struct chcr_aead_ctx* AEAD_CTX (int ) ;
 void* CHCR_SCMD_HMAC_CTRL_DIV2 ;
 void* CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT ;
 void* CHCR_SCMD_HMAC_CTRL_NO_TRUNC ;
 void* CHCR_SCMD_HMAC_CTRL_PL1 ;
 void* CHCR_SCMD_HMAC_CTRL_PL2 ;
 void* CHCR_SCMD_HMAC_CTRL_PL3 ;
 void* CHCR_SCMD_HMAC_CTRL_TRUNC_RFC4366 ;
 unsigned int ICV_10 ;
 unsigned int ICV_12 ;
 unsigned int ICV_14 ;
 unsigned int ICV_4 ;
 unsigned int ICV_6 ;
 void* VERIFY_HW ;
 void* VERIFY_SW ;
 int a_ctx (struct crypto_aead*) ;
 int crypto_aead_maxauthsize (struct crypto_aead*) ;
 int crypto_aead_setauthsize (int ,unsigned int) ;

__attribute__((used)) static int chcr_authenc_setauthsize(struct crypto_aead *tfm,
        unsigned int authsize)
{
 struct chcr_aead_ctx *aeadctx = AEAD_CTX(a_ctx(tfm));
 u32 maxauth = crypto_aead_maxauthsize(tfm);





 if (authsize == ICV_4) {
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL1;
  aeadctx->mayverify = VERIFY_HW;
 } else if (authsize == ICV_6) {
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL2;
  aeadctx->mayverify = VERIFY_HW;
 } else if (authsize == ICV_10) {
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_TRUNC_RFC4366;
  aeadctx->mayverify = VERIFY_HW;
 } else if (authsize == ICV_12) {
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT;
  aeadctx->mayverify = VERIFY_HW;
 } else if (authsize == ICV_14) {
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL3;
  aeadctx->mayverify = VERIFY_HW;
 } else if (authsize == (maxauth >> 1)) {
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_DIV2;
  aeadctx->mayverify = VERIFY_HW;
 } else if (authsize == maxauth) {
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_NO_TRUNC;
  aeadctx->mayverify = VERIFY_HW;
 } else {
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_NO_TRUNC;
  aeadctx->mayverify = VERIFY_SW;
 }
 return crypto_aead_setauthsize(aeadctx->sw_cipher, authsize);
}
