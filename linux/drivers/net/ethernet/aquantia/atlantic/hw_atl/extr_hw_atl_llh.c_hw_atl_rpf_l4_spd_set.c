
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPF_L4_SPD_ADR (int ) ;
 int HW_ATL_RPF_L4_SPD_MSK ;
 int HW_ATL_RPF_L4_SPD_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpf_l4_spd_set(struct aq_hw_s *aq_hw, u32 val, u32 filter)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPF_L4_SPD_ADR(filter),
       HW_ATL_RPF_L4_SPD_MSK,
       HW_ATL_RPF_L4_SPD_SHIFT, val);
}
