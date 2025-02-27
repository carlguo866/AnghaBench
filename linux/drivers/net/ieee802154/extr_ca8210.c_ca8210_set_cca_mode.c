
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpan_phy_cca {int mode; scalar_t__ opt; } ;
struct ieee802154_hw {struct ca8210_priv* priv; } ;
struct ca8210_priv {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ NL802154_CCA_OPT_ENERGY_CARRIER_OR ;
 int PHY_CCA_MODE ;
 int dev_err (int *,char*,int) ;
 int link_to_linux_err (int) ;
 int mlme_set_request_sync (int ,int ,int,int*,TYPE_1__*) ;

__attribute__((used)) static int ca8210_set_cca_mode(
 struct ieee802154_hw *hw,
 const struct wpan_phy_cca *cca
)
{
 u8 status;
 u8 cca_mode;
 struct ca8210_priv *priv = hw->priv;

 cca_mode = cca->mode & 3;
 if (cca_mode == 3 && cca->opt == NL802154_CCA_OPT_ENERGY_CARRIER_OR) {

  cca_mode = 0;
 }
 status = mlme_set_request_sync(
  PHY_CCA_MODE,
  0,
  1,
  &cca_mode,
  priv->spi
 );
 if (status) {
  dev_err(
   &priv->spi->dev,
   "error setting cca mode, MLME-SET.confirm status = %d",
   status
  );
 }
 return link_to_linux_err(status);
}
