
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct mv_cesa_op_ctx {int dummy; } ;


 int CESA_SA_DESC_CFG_3DES_EDE ;
 int CESA_SA_DESC_CFG_CRYPTCM_CBC ;
 int CESA_SA_DESC_CFG_DIR_ENC ;
 int mv_cesa_cbc_des3_op (struct skcipher_request*,struct mv_cesa_op_ctx*) ;
 int mv_cesa_set_op_cfg (struct mv_cesa_op_ctx*,int) ;

__attribute__((used)) static int mv_cesa_cbc_des3_ede_encrypt(struct skcipher_request *req)
{
 struct mv_cesa_op_ctx tmpl;

 mv_cesa_set_op_cfg(&tmpl,
      CESA_SA_DESC_CFG_CRYPTCM_CBC |
      CESA_SA_DESC_CFG_3DES_EDE |
      CESA_SA_DESC_CFG_DIR_ENC);

 return mv_cesa_cbc_des3_op(req, &tmpl);
}
