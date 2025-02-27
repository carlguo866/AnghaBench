
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct i40e_vsi {scalar_t__ type; int vf_id; struct i40e_pf* back; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {TYPE_1__* pdev; struct i40e_hw hw; } ;
struct TYPE_2__ {int dev; } ;


 int I40E_PFQF_HLUT (scalar_t__) ;
 scalar_t__ I40E_PFQF_HLUT_MAX_INDEX ;
 int I40E_VFQF_HLUT1 (scalar_t__,int ) ;
 scalar_t__ I40E_VFQF_HLUT_MAX_INDEX ;
 scalar_t__ I40E_VSI_MAIN ;
 scalar_t__ I40E_VSI_SRIOV ;
 int dev_err (int *,char*) ;
 int i40e_write_rx_ctl (struct i40e_hw*,int ,int ) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static void i40e_clear_rss_lut(struct i40e_vsi *vsi)
{
 struct i40e_pf *pf = vsi->back;
 struct i40e_hw *hw = &pf->hw;
 u16 vf_id = vsi->vf_id;
 u8 i;

 if (vsi->type == I40E_VSI_MAIN) {
  for (i = 0; i <= I40E_PFQF_HLUT_MAX_INDEX; i++)
   wr32(hw, I40E_PFQF_HLUT(i), 0);
 } else if (vsi->type == I40E_VSI_SRIOV) {
  for (i = 0; i <= I40E_VFQF_HLUT_MAX_INDEX; i++)
   i40e_write_rx_ctl(hw, I40E_VFQF_HLUT1(i, vf_id), 0);
 } else {
  dev_err(&pf->pdev->dev, "Cannot set RSS LUT - invalid VSI type\n");
 }
}
