
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_3__ {int msgs_tx; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct e1000_hw {TYPE_2__ mbx; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_P2VMAILBOX (size_t) ;
 int E1000_P2VMAILBOX_STS ;
 int E1000_VMBMEM (size_t) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,size_t,int ) ;
 int e1000_check_for_ack_pf (struct e1000_hw*,size_t) ;
 int e1000_check_for_msg_pf (struct e1000_hw*,size_t) ;
 scalar_t__ e1000_obtain_mbx_lock_pf (struct e1000_hw*,size_t) ;

__attribute__((used)) static s32 e1000_write_mbx_pf(struct e1000_hw *hw, u32 *msg, u16 size,
         u16 vf_number)
{
 s32 ret_val;
 u16 i;

 DEBUGFUNC("e1000_write_mbx_pf");


 ret_val = e1000_obtain_mbx_lock_pf(hw, vf_number);
 if (ret_val)
  goto out_no_write;


 e1000_check_for_msg_pf(hw, vf_number);
 e1000_check_for_ack_pf(hw, vf_number);


 for (i = 0; i < size; i++)
  E1000_WRITE_REG_ARRAY(hw, E1000_VMBMEM(vf_number), i, msg[i]);


 E1000_WRITE_REG(hw, E1000_P2VMAILBOX(vf_number), E1000_P2VMAILBOX_STS);


 hw->mbx.stats.msgs_tx++;

out_no_write:
 return ret_val;

}
