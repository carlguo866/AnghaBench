
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sfp_type; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
typedef int s32 ;


 int IXGBE_ERR_SFP_NOT_PRESENT ;
 int IXGBE_ERR_SFP_NOT_SUPPORTED ;
__attribute__((used)) static s32 ixgbe_supported_sfp_modules_X550em(struct ixgbe_hw *hw, bool *linear)
{
 switch (hw->phy.sfp_type) {
 case 131:
  return IXGBE_ERR_SFP_NOT_PRESENT;
 case 133:
 case 132:
  *linear = 1;
  break;
 case 130:
 case 129:
 case 135:
 case 134:
 case 137:
 case 136:
 case 139:
 case 138:
  *linear = 0;
  break;
 case 128:
 case 141:
 case 140:
 default:
  return IXGBE_ERR_SFP_NOT_SUPPORTED;
 }

 return 0;
}
