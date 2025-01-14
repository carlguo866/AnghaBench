
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int up; int speed; int fd; int fc; } ;
struct efx_nic {scalar_t__ phy_type; TYPE_1__ link_state; int wanted_fc; } ;


 scalar_t__ PHY_TYPE_QT2025C ;
 int qt2025c_bug17190_workaround (struct efx_nic*) ;
 int qt202x_link_ok (struct efx_nic*) ;

__attribute__((used)) static bool qt202x_phy_poll(struct efx_nic *efx)
{
 bool was_up = efx->link_state.up;

 efx->link_state.up = qt202x_link_ok(efx);
 efx->link_state.speed = 10000;
 efx->link_state.fd = 1;
 efx->link_state.fc = efx->wanted_fc;

 if (efx->phy_type == PHY_TYPE_QT2025C)
  qt2025c_bug17190_workaround(efx);

 return efx->link_state.up != was_up;
}
