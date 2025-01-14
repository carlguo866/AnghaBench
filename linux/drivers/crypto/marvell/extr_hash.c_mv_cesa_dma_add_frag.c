
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_tdma_chain {int dummy; } ;
struct mv_cesa_op_ctx {int dummy; } ;
typedef int gfp_t ;


 int CESA_SA_DESC_CFG_FRAG_MSK ;
 int CESA_SA_DESC_CFG_MID_FRAG ;
 struct mv_cesa_op_ctx* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct mv_cesa_op_ctx*) ;
 int mv_cesa_dma_add_dummy_launch (struct mv_cesa_tdma_chain*,int ) ;
 struct mv_cesa_op_ctx* mv_cesa_dma_add_op (struct mv_cesa_tdma_chain*,struct mv_cesa_op_ctx*,int,int ) ;
 scalar_t__ mv_cesa_mac_op_is_first_frag (struct mv_cesa_op_ctx*) ;
 int mv_cesa_set_mac_op_frag_len (struct mv_cesa_op_ctx*,unsigned int) ;
 int mv_cesa_update_op_cfg (struct mv_cesa_op_ctx*,int ,int ) ;

__attribute__((used)) static struct mv_cesa_op_ctx *
mv_cesa_dma_add_frag(struct mv_cesa_tdma_chain *chain,
       struct mv_cesa_op_ctx *tmpl, unsigned int frag_len,
       gfp_t flags)
{
 struct mv_cesa_op_ctx *op;
 int ret;

 op = mv_cesa_dma_add_op(chain, tmpl, 0, flags);
 if (IS_ERR(op))
  return op;


 mv_cesa_set_mac_op_frag_len(op, frag_len);


 ret = mv_cesa_dma_add_dummy_launch(chain, flags);
 if (ret)
  return ERR_PTR(ret);

 if (mv_cesa_mac_op_is_first_frag(tmpl))
  mv_cesa_update_op_cfg(tmpl,
          CESA_SA_DESC_CFG_MID_FRAG,
          CESA_SA_DESC_CFG_FRAG_MSK);

 return op;
}
