
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_nic {int wanted_fc; int link_advertising; } ;


 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Pause ;
 int EFX_FC_RX ;
 int EFX_FC_TX ;

void efx_link_set_wanted_fc(struct efx_nic *efx, u8 wanted_fc)
{
 efx->wanted_fc = wanted_fc;
 if (efx->link_advertising) {
  if (wanted_fc & EFX_FC_RX)
   efx->link_advertising |= (ADVERTISED_Pause |
        ADVERTISED_Asym_Pause);
  else
   efx->link_advertising &= ~(ADVERTISED_Pause |
         ADVERTISED_Asym_Pause);
  if (wanted_fc & EFX_FC_TX)
   efx->link_advertising ^= ADVERTISED_Asym_Pause;
 }
}
