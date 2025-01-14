
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ieee802154_hw_addr_filt {int ieee_addr; int short_addr; int pan_id; } ;
struct ieee802154_hw {struct ca8210_priv* priv; } ;
struct ca8210_priv {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 unsigned long IEEE802154_AFILT_IEEEADDR_CHANGED ;
 unsigned long IEEE802154_AFILT_PANID_CHANGED ;
 unsigned long IEEE802154_AFILT_SADDR_CHANGED ;
 int MAC_PAN_ID ;
 int MAC_SHORT_ADDRESS ;
 int NS_IEEE_ADDRESS ;
 int dev_err (int *,char*,scalar_t__) ;
 int link_to_linux_err (scalar_t__) ;
 scalar_t__ mlme_set_request_sync (int ,int ,int,int *,TYPE_1__*) ;

__attribute__((used)) static int ca8210_set_hw_addr_filt(
 struct ieee802154_hw *hw,
 struct ieee802154_hw_addr_filt *filt,
 unsigned long changed
)
{
 u8 status = 0;
 struct ca8210_priv *priv = hw->priv;

 if (changed & IEEE802154_AFILT_PANID_CHANGED) {
  status = mlme_set_request_sync(
   MAC_PAN_ID,
   0,
   2,
   &filt->pan_id, priv->spi
  );
  if (status) {
   dev_err(
    &priv->spi->dev,
    "error setting pan id, MLME-SET.confirm status = %d",
    status
   );
   return link_to_linux_err(status);
  }
 }
 if (changed & IEEE802154_AFILT_SADDR_CHANGED) {
  status = mlme_set_request_sync(
   MAC_SHORT_ADDRESS,
   0,
   2,
   &filt->short_addr, priv->spi
  );
  if (status) {
   dev_err(
    &priv->spi->dev,
    "error setting short address, MLME-SET.confirm status = %d",
    status
   );
   return link_to_linux_err(status);
  }
 }
 if (changed & IEEE802154_AFILT_IEEEADDR_CHANGED) {
  status = mlme_set_request_sync(
   NS_IEEE_ADDRESS,
   0,
   8,
   &filt->ieee_addr,
   priv->spi
  );
  if (status) {
   dev_err(
    &priv->spi->dev,
    "error setting ieee address, MLME-SET.confirm status = %d",
    status
   );
   return link_to_linux_err(status);
  }
 }

 return 0;
}
