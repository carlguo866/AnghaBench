
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mwifiex_private {scalar_t__ bss_started; scalar_t__ media_connected; } ;
struct mwifiex_adapter {size_t priv_num; struct mwifiex_private** priv; } ;


 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 size_t MWIFIEX_BSS_COEX_COUNT ;
 scalar_t__ MWIFIEX_BSS_ROLE_STA ;
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ;
 int mwifiex_update_ampdu_rxwinsize (struct mwifiex_adapter*,int) ;

void mwifiex_coex_ampdu_rxwinsize(struct mwifiex_adapter *adapter)
{
 u8 i;
 struct mwifiex_private *priv;
 u8 count = 0;

 for (i = 0; i < adapter->priv_num; i++) {
  if (adapter->priv[i]) {
   priv = adapter->priv[i];
   if (GET_BSS_ROLE(priv) == MWIFIEX_BSS_ROLE_STA) {
    if (priv->media_connected)
     count++;
   }
   if (GET_BSS_ROLE(priv) == MWIFIEX_BSS_ROLE_UAP) {
    if (priv->bss_started)
     count++;
   }
  }
  if (count >= MWIFIEX_BSS_COEX_COUNT)
   break;
 }
 if (count >= MWIFIEX_BSS_COEX_COUNT)
  mwifiex_update_ampdu_rxwinsize(adapter, 1);
 else
  mwifiex_update_ampdu_rxwinsize(adapter, 0);
}
