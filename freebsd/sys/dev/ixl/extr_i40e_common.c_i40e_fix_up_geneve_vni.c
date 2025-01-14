
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_aqc_add_remove_cloud_filters_element_data {int tenant_id; int flags; } ;


 int CPU_TO_LE32 (int) ;
 int I40E_AQC_ADD_CLOUD_TNL_TYPE_GENEVE ;
 int I40E_AQC_ADD_CLOUD_TNL_TYPE_MASK ;
 int I40E_AQC_ADD_CLOUD_TNL_TYPE_SHIFT ;
 int LE16_TO_CPU (int ) ;
 int LE32_TO_CPU (int ) ;

__attribute__((used)) static void i40e_fix_up_geneve_vni(
 struct i40e_aqc_add_remove_cloud_filters_element_data *filters,
 u8 filter_count)
{
 struct i40e_aqc_add_remove_cloud_filters_element_data *f = filters;
 int i;

 for (i = 0; i < filter_count; i++) {
  u16 tnl_type;
  u32 ti;

  tnl_type = (LE16_TO_CPU(f[i].flags) &
      I40E_AQC_ADD_CLOUD_TNL_TYPE_MASK) >>
      I40E_AQC_ADD_CLOUD_TNL_TYPE_SHIFT;
  if (tnl_type == I40E_AQC_ADD_CLOUD_TNL_TYPE_GENEVE) {
   ti = LE32_TO_CPU(f[i].tenant_id);
   f[i].tenant_id = CPU_TO_LE32(ti << 8);
  }
 }
}
