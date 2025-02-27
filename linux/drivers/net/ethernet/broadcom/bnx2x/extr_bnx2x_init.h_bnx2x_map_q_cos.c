
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_E3B0_PORT1_COS_OFFSET ;
 int BNX2X_PF_Q_NUM (int,scalar_t__,int) ;
 int BNX2X_PORT2_MODE_NUM_VNICS ;
 int BNX2X_PORT4_MODE_NUM_VNICS ;
 int BNX2X_Q_CMDQ_REG_ADDR (int) ;
 int BNX2X_Q_VOQ_REG_ADDR (int) ;
 int BNX2X_VOQ_Q_REG_ADDR (int,int) ;
 scalar_t__ BP_PORT (struct bnx2x*) ;
 int INIT_MODE_FLAGS (struct bnx2x*) ;
 int MODE_E3_B0 ;
 int MODE_PORT4 ;
 int QM_REG_QVOQIDX_0 ;
 int REG_RD (struct bnx2x*,int) ;
 int REG_WR (struct bnx2x*,int,int) ;

__attribute__((used)) static inline void bnx2x_map_q_cos(struct bnx2x *bp, u32 q_num, u32 new_cos)
{

 u32 curr_cos = REG_RD(bp, QM_REG_QVOQIDX_0 + q_num * 4);


 if (curr_cos != new_cos) {
  u32 num_vnics = BNX2X_PORT2_MODE_NUM_VNICS;
  u32 reg_addr, reg_bit_map, vnic;


  if (INIT_MODE_FLAGS(bp) & MODE_PORT4) {
   num_vnics = BNX2X_PORT4_MODE_NUM_VNICS;
   if (BP_PORT(bp)) {
    curr_cos += BNX2X_E3B0_PORT1_COS_OFFSET;
    new_cos += BNX2X_E3B0_PORT1_COS_OFFSET;
   }
  }


  for (vnic = 0; vnic < num_vnics; vnic++) {
   u32 pf_q_num =
    BNX2X_PF_Q_NUM(q_num, BP_PORT(bp), vnic);
   u32 q_bit_map = 1 << (pf_q_num & 0x1f);


   REG_WR(bp, BNX2X_Q_VOQ_REG_ADDR(pf_q_num), new_cos);


   reg_addr = BNX2X_VOQ_Q_REG_ADDR(curr_cos, pf_q_num);
   reg_bit_map = REG_RD(bp, reg_addr);
   REG_WR(bp, reg_addr, reg_bit_map & (~q_bit_map));


   reg_addr = BNX2X_VOQ_Q_REG_ADDR(new_cos, pf_q_num);
   reg_bit_map = REG_RD(bp, reg_addr);
   REG_WR(bp, reg_addr, reg_bit_map | q_bit_map);




   if (!(INIT_MODE_FLAGS(bp) & MODE_E3_B0)) {
    reg_addr = BNX2X_Q_CMDQ_REG_ADDR(pf_q_num);
    reg_bit_map = REG_RD(bp, reg_addr);
    q_bit_map = 1 << (2 * (pf_q_num & 0xf));
    reg_bit_map = new_cos ?
           (reg_bit_map | q_bit_map) :
           (reg_bit_map & (~q_bit_map));
    REG_WR(bp, reg_addr, reg_bit_map);
   }
  }
 }
}
