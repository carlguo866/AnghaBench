
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int mdio_port_num; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct ixl_pf {struct i40e_hw hw; } ;
typedef scalar_t__ s32 ;


 int I40E_GLGEN_I2CCMD (int ) ;
 int I40E_GLGEN_I2CCMD_OP_MASK ;
 int I40E_GLGEN_I2CCMD_PHYADD_SHIFT ;
 int I40E_GLGEN_I2CCMD_REGADD_SHIFT ;
 int IXL_DBG_I2C ;
 int ixl_dbg (struct ixl_pf*,int ,char*) ;
 scalar_t__ ixl_wait_for_i2c_completion (struct i40e_hw*,int ) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

s32
ixl_read_i2c_byte_reg(struct ixl_pf *pf, u8 byte_offset,
    u8 dev_addr, u8 *data)
{
 struct i40e_hw *hw = &pf->hw;
 u32 reg = 0;
 s32 status;
 *data = 0;

 reg |= (byte_offset << I40E_GLGEN_I2CCMD_REGADD_SHIFT);
 reg |= (((dev_addr >> 1) & 0x7) << I40E_GLGEN_I2CCMD_PHYADD_SHIFT);
 reg |= I40E_GLGEN_I2CCMD_OP_MASK;
 wr32(hw, I40E_GLGEN_I2CCMD(hw->func_caps.mdio_port_num), reg);

 status = ixl_wait_for_i2c_completion(hw, hw->func_caps.mdio_port_num);


 reg = rd32(hw, I40E_GLGEN_I2CCMD(hw->func_caps.mdio_port_num));


 *data = (u8)(reg & 0xff);

 if (status)
  ixl_dbg(pf, IXL_DBG_I2C, "I2C byte read error\n");
 return status;
}
