
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get_phy_info ) (struct igc_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct igc_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int stub1 (struct igc_hw*) ;

__attribute__((used)) static inline s32 igc_get_phy_info(struct igc_hw *hw)
{
 if (hw->phy.ops.get_phy_info)
  return hw->phy.ops.get_phy_info(hw);

 return 0;
}
