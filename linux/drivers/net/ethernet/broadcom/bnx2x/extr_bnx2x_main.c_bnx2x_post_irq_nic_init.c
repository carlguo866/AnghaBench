
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int AEU_INPUTS_ATTN_BITS_SPIO5 ;
 int BP_PORT (struct bnx2x*) ;
 scalar_t__ MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 ;
 int REG_RD (struct bnx2x*,scalar_t__) ;
 int bnx2x_attn_int_deasserted0 (struct bnx2x*,int) ;
 int bnx2x_init_eq_ring (struct bnx2x*) ;
 int bnx2x_init_internal (struct bnx2x*,int ) ;
 int bnx2x_int_enable (struct bnx2x*) ;
 int bnx2x_pf_init (struct bnx2x*) ;
 int bnx2x_stats_init (struct bnx2x*) ;
 int mb () ;

void bnx2x_post_irq_nic_init(struct bnx2x *bp, u32 load_code)
{
 bnx2x_init_eq_ring(bp);
 bnx2x_init_internal(bp, load_code);
 bnx2x_pf_init(bp);
 bnx2x_stats_init(bp);


 mb();

 bnx2x_int_enable(bp);


 bnx2x_attn_int_deasserted0(bp,
  REG_RD(bp, MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 + BP_PORT(bp)*4) &
       AEU_INPUTS_ATTN_BITS_SPIO5);
}
