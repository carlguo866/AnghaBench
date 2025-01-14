
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int BM_CS_STATUS ;
 int BM_CS_STATUS_LINK_UP ;
 int BM_CS_STATUS_RESOLVED ;
 int BM_CS_STATUS_SPEED_1000 ;
 int BM_CS_STATUS_SPEED_MASK ;
 int DEBUGFUNC (char*) ;
 scalar_t__ E1000_SUCCESS ;
 int HV_MUX_DATA_CTRL ;
 int HV_MUX_DATA_CTRL_FORCE_SPEED ;
 int HV_MUX_DATA_CTRL_GEN_TO_MAC ;
 int PHY_CONTROL ;
 int PHY_CONTROL_LB ;
 scalar_t__ e1000_phy_82578 ;
 int msec_delay (int) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int) ;

s32 e1000_link_stall_workaround_hv(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;
 u16 data;

 DEBUGFUNC("e1000_link_stall_workaround_hv");

 if (hw->phy.type != e1000_phy_82578)
  return E1000_SUCCESS;


 hw->phy.ops.read_reg(hw, PHY_CONTROL, &data);
 if (data & PHY_CONTROL_LB)
  return E1000_SUCCESS;


 ret_val = hw->phy.ops.read_reg(hw, BM_CS_STATUS, &data);
 if (ret_val)
  return ret_val;

 data &= (BM_CS_STATUS_LINK_UP | BM_CS_STATUS_RESOLVED |
   BM_CS_STATUS_SPEED_MASK);

 if (data != (BM_CS_STATUS_LINK_UP | BM_CS_STATUS_RESOLVED |
       BM_CS_STATUS_SPEED_1000))
  return E1000_SUCCESS;

 msec_delay(200);


 ret_val = hw->phy.ops.write_reg(hw, HV_MUX_DATA_CTRL,
     (HV_MUX_DATA_CTRL_GEN_TO_MAC |
      HV_MUX_DATA_CTRL_FORCE_SPEED));
 if (ret_val)
  return ret_val;

 return hw->phy.ops.write_reg(hw, HV_MUX_DATA_CTRL,
         HV_MUX_DATA_CTRL_GEN_TO_MAC);
}
