
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int __e1000_read_kmrn_reg (struct e1000_hw*,int ,int *,int) ;

s32 e1000e_read_kmrn_reg_locked(struct e1000_hw *hw, u32 offset, u16 *data)
{
 return __e1000_read_kmrn_reg(hw, offset, data, 1);
}
