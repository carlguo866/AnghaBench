
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ef4_nic {int wanted_fc; int link_advertising; } ;


 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Pause ;
 int EF4_FC_RX ;
 int EF4_FC_TX ;

void ef4_link_set_wanted_fc(struct ef4_nic *efx, u8 wanted_fc)
{
 efx->wanted_fc = wanted_fc;
 if (efx->link_advertising) {
  if (wanted_fc & EF4_FC_RX)
   efx->link_advertising |= (ADVERTISED_Pause |
        ADVERTISED_Asym_Pause);
  else
   efx->link_advertising &= ~(ADVERTISED_Pause |
         ADVERTISED_Asym_Pause);
  if (wanted_fc & EF4_FC_TX)
   efx->link_advertising ^= ADVERTISED_Asym_Pause;
 }
}
