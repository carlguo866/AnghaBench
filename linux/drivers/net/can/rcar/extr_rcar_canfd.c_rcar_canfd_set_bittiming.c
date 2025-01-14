
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct can_bittiming {scalar_t__ phase_seg2; scalar_t__ phase_seg1; scalar_t__ prop_seg; scalar_t__ sjw; scalar_t__ brp; } ;
struct TYPE_2__ {int ctrlmode; struct can_bittiming data_bittiming; struct can_bittiming bittiming; } ;
struct rcar_canfd_channel {int channel; int ndev; int base; TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 int CAN_CTRLMODE_FD ;
 int RCANFD_CCFG (int) ;
 int RCANFD_CFG_BRP (scalar_t__) ;
 int RCANFD_CFG_SJW (scalar_t__) ;
 int RCANFD_CFG_TSEG1 (scalar_t__) ;
 int RCANFD_CFG_TSEG2 (scalar_t__) ;
 int RCANFD_DCFG_DBRP (scalar_t__) ;
 int RCANFD_DCFG_DSJW (scalar_t__) ;
 int RCANFD_DCFG_DTSEG1 (scalar_t__) ;
 int RCANFD_DCFG_DTSEG2 (scalar_t__) ;
 int RCANFD_F_DCFG (int) ;
 int RCANFD_NCFG_NBRP (scalar_t__) ;
 int RCANFD_NCFG_NSJW (scalar_t__) ;
 int RCANFD_NCFG_NTSEG1 (scalar_t__) ;
 int RCANFD_NCFG_NTSEG2 (scalar_t__) ;
 int netdev_dbg (int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 struct rcar_canfd_channel* netdev_priv (struct net_device*) ;
 int rcar_canfd_write (int ,int ,int) ;

__attribute__((used)) static void rcar_canfd_set_bittiming(struct net_device *dev)
{
 struct rcar_canfd_channel *priv = netdev_priv(dev);
 const struct can_bittiming *bt = &priv->can.bittiming;
 const struct can_bittiming *dbt = &priv->can.data_bittiming;
 u16 brp, sjw, tseg1, tseg2;
 u32 cfg;
 u32 ch = priv->channel;


 brp = bt->brp - 1;
 sjw = bt->sjw - 1;
 tseg1 = bt->prop_seg + bt->phase_seg1 - 1;
 tseg2 = bt->phase_seg2 - 1;

 if (priv->can.ctrlmode & CAN_CTRLMODE_FD) {

  cfg = (RCANFD_NCFG_NTSEG1(tseg1) | RCANFD_NCFG_NBRP(brp) |
         RCANFD_NCFG_NSJW(sjw) | RCANFD_NCFG_NTSEG2(tseg2));

  rcar_canfd_write(priv->base, RCANFD_CCFG(ch), cfg);
  netdev_dbg(priv->ndev, "nrate: brp %u, sjw %u, tseg1 %u, tseg2 %u\n",
      brp, sjw, tseg1, tseg2);


  brp = dbt->brp - 1;
  sjw = dbt->sjw - 1;
  tseg1 = dbt->prop_seg + dbt->phase_seg1 - 1;
  tseg2 = dbt->phase_seg2 - 1;

  cfg = (RCANFD_DCFG_DTSEG1(tseg1) | RCANFD_DCFG_DBRP(brp) |
         RCANFD_DCFG_DSJW(sjw) | RCANFD_DCFG_DTSEG2(tseg2));

  rcar_canfd_write(priv->base, RCANFD_F_DCFG(ch), cfg);
  netdev_dbg(priv->ndev, "drate: brp %u, sjw %u, tseg1 %u, tseg2 %u\n",
      brp, sjw, tseg1, tseg2);
 } else {

  cfg = (RCANFD_CFG_TSEG1(tseg1) | RCANFD_CFG_BRP(brp) |
   RCANFD_CFG_SJW(sjw) | RCANFD_CFG_TSEG2(tseg2));

  rcar_canfd_write(priv->base, RCANFD_CCFG(ch), cfg);
  netdev_dbg(priv->ndev,
      "rate: brp %u, sjw %u, tseg1 %u, tseg2 %u\n",
      brp, sjw, tseg1, tseg2);
 }
}
