
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* read_reg ) (struct e1000_hw*,int ,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int stub1 (struct e1000_hw*,int ,int *) ;

__attribute__((used)) static inline s32 e1e_rphy(struct e1000_hw *hw, u32 offset, u16 *data)
{
 return hw->phy.ops.read_reg(hw, offset, data);
}
