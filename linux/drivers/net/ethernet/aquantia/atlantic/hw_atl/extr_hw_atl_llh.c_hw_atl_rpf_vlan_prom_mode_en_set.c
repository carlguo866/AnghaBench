
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPF_VL_PROMIS_MODE_ADR ;
 int HW_ATL_RPF_VL_PROMIS_MODE_MSK ;
 int HW_ATL_RPF_VL_PROMIS_MODE_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpf_vlan_prom_mode_en_set(struct aq_hw_s *aq_hw,
          u32 vlan_prom_mode_en)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPF_VL_PROMIS_MODE_ADR,
       HW_ATL_RPF_VL_PROMIS_MODE_MSK,
       HW_ATL_RPF_VL_PROMIS_MODE_SHIFT,
       vlan_prom_mode_en);
}
