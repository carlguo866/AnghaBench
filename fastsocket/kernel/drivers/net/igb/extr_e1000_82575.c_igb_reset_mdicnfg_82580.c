
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int func; } ;
struct TYPE_7__ {scalar_t__ (* read ) (struct e1000_hw*,scalar_t__,int,int*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ bus; TYPE_4__ nvm; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int E1000_MDICNFG ;
 int E1000_MDICNFG_COM_MDIO ;
 int E1000_MDICNFG_EXT_MDIO ;
 scalar_t__ NVM_82580_LAN_FUNC_OFFSET (int ) ;
 scalar_t__ NVM_INIT_CONTROL3_PORT_A ;
 int NVM_WORD24_COM_MDIO ;
 int NVM_WORD24_EXT_MDIO ;
 scalar_t__ e1000_82580 ;
 int hw_dbg (char*) ;
 int igb_sgmii_active_82575 (struct e1000_hw*) ;
 int rd32 (int ) ;
 scalar_t__ stub1 (struct e1000_hw*,scalar_t__,int,int*) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static s32 igb_reset_mdicnfg_82580(struct e1000_hw *hw)
{
 s32 ret_val = 0;
 u32 mdicnfg;
 u16 nvm_data = 0;

 if (hw->mac.type != e1000_82580)
  goto out;
 if (!igb_sgmii_active_82575(hw))
  goto out;

 ret_val = hw->nvm.ops.read(hw, NVM_INIT_CONTROL3_PORT_A +
       NVM_82580_LAN_FUNC_OFFSET(hw->bus.func), 1,
       &nvm_data);
 if (ret_val) {
  hw_dbg("NVM Read Error\n");
  goto out;
 }

 mdicnfg = rd32(E1000_MDICNFG);
 if (nvm_data & NVM_WORD24_EXT_MDIO)
  mdicnfg |= E1000_MDICNFG_EXT_MDIO;
 if (nvm_data & NVM_WORD24_COM_MDIO)
  mdicnfg |= E1000_MDICNFG_COM_MDIO;
 wr32(E1000_MDICNFG, mdicnfg);
out:
 return ret_val;
}
