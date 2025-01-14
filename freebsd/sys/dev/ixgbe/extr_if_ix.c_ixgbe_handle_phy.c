
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* handle_lasi ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
struct adapter {int dev; struct ixgbe_hw hw; } ;
typedef void* if_ctx_t ;


 int IXGBE_ERR_OVERTEMP ;
 int device_printf (int ,char*,...) ;
 struct adapter* iflib_get_softc (void*) ;
 int stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static void
ixgbe_handle_phy(void *context)
{
 if_ctx_t ctx = context;
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 int error;

 error = hw->phy.ops.handle_lasi(hw);
 if (error == IXGBE_ERR_OVERTEMP)
  device_printf(adapter->dev, "CRITICAL: EXTERNAL PHY OVER TEMP!!  PHY will downshift to lower power state!\n");
 else if (error)
  device_printf(adapter->dev,
      "Error handling LASI interrupt: %d\n", error);
}
