
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BAR_CSTRORM_INTMEM ;
 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_SP ;
 int CSTORM_FINAL_CLEANUP_COMPLETE_OFFSET (int ) ;
 int DP (int ,char*,...) ;
 int OP_GEN_AGG_VECT (int ) ;
 int OP_GEN_PARAM (int ) ;
 int OP_GEN_TYPE (int ) ;
 scalar_t__ REG_RD (struct bnx2x*,int) ;
 int REG_WR (struct bnx2x*,int,int) ;
 int SDM_OP_GEN_AGG_VECT_IDX_VALID_SHIFT ;
 int XSDM_REG_OPERATION_GEN ;
 int XSTORM_AGG_INT_FINAL_CLEANUP_COMP_TYPE ;
 int XSTORM_AGG_INT_FINAL_CLEANUP_INDEX ;
 int bnx2x_flr_clnup_reg_poll (struct bnx2x*,int,int,int) ;
 int bnx2x_panic () ;

int bnx2x_send_final_clnup(struct bnx2x *bp, u8 clnup_func, u32 poll_cnt)
{
 u32 op_gen_command = 0;
 u32 comp_addr = BAR_CSTRORM_INTMEM +
   CSTORM_FINAL_CLEANUP_COMPLETE_OFFSET(clnup_func);
 int ret = 0;

 if (REG_RD(bp, comp_addr)) {
  BNX2X_ERR("Cleanup complete was not 0 before sending\n");
  return 1;
 }

 op_gen_command |= OP_GEN_PARAM(XSTORM_AGG_INT_FINAL_CLEANUP_INDEX);
 op_gen_command |= OP_GEN_TYPE(XSTORM_AGG_INT_FINAL_CLEANUP_COMP_TYPE);
 op_gen_command |= OP_GEN_AGG_VECT(clnup_func);
 op_gen_command |= 1 << SDM_OP_GEN_AGG_VECT_IDX_VALID_SHIFT;

 DP(BNX2X_MSG_SP, "sending FW Final cleanup\n");
 REG_WR(bp, XSDM_REG_OPERATION_GEN, op_gen_command);

 if (bnx2x_flr_clnup_reg_poll(bp, comp_addr, 1, poll_cnt) != 1) {
  BNX2X_ERR("FW final cleanup did not succeed\n");
  DP(BNX2X_MSG_SP, "At timeout completion address contained %x\n",
     (REG_RD(bp, comp_addr)));
  bnx2x_panic();
  return 1;
 }

 REG_WR(bp, comp_addr, 0);

 return ret;
}
