
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b44 {int flags; int dev; } ;


 int B44_FLAG_100_BASE_T ;
 int B44_FLAG_EXTERNAL_PHY ;
 int B44_FLAG_FORCE_LINK ;
 int B44_FLAG_FULL_DUPLEX ;
 int B44_MII_AUXCTRL ;
 int B44_TX_CTRL ;
 int BMSR_JCD ;
 int BMSR_LSTATUS ;
 int BMSR_RFAULT ;
 int MII_ADVERTISE ;
 int MII_AUXCTRL_DUPLEX ;
 int MII_AUXCTRL_SPEED ;
 int MII_BMSR ;
 int MII_LPA ;
 int TX_CTRL_DUPLEX ;
 int b44_link_report (struct b44*) ;
 int b44_readphy (struct b44*,int ,int*) ;
 int b44_set_flow_ctrl (struct b44*,int,int) ;
 int br32 (struct b44*,int ) ;
 int bw32 (struct b44*,int ,int) ;
 int netdev_warn (int ,char*) ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;

__attribute__((used)) static void b44_check_phy(struct b44 *bp)
{
 u32 bmsr, aux;

 if (bp->flags & B44_FLAG_EXTERNAL_PHY) {
  bp->flags |= B44_FLAG_100_BASE_T;
  if (!netif_carrier_ok(bp->dev)) {
   u32 val = br32(bp, B44_TX_CTRL);
   if (bp->flags & B44_FLAG_FULL_DUPLEX)
    val |= TX_CTRL_DUPLEX;
   else
    val &= ~TX_CTRL_DUPLEX;
   bw32(bp, B44_TX_CTRL, val);
   netif_carrier_on(bp->dev);
   b44_link_report(bp);
  }
  return;
 }

 if (!b44_readphy(bp, MII_BMSR, &bmsr) &&
     !b44_readphy(bp, B44_MII_AUXCTRL, &aux) &&
     (bmsr != 0xffff)) {
  if (aux & MII_AUXCTRL_SPEED)
   bp->flags |= B44_FLAG_100_BASE_T;
  else
   bp->flags &= ~B44_FLAG_100_BASE_T;
  if (aux & MII_AUXCTRL_DUPLEX)
   bp->flags |= B44_FLAG_FULL_DUPLEX;
  else
   bp->flags &= ~B44_FLAG_FULL_DUPLEX;

  if (!netif_carrier_ok(bp->dev) &&
      (bmsr & BMSR_LSTATUS)) {
   u32 val = br32(bp, B44_TX_CTRL);
   u32 local_adv, remote_adv;

   if (bp->flags & B44_FLAG_FULL_DUPLEX)
    val |= TX_CTRL_DUPLEX;
   else
    val &= ~TX_CTRL_DUPLEX;
   bw32(bp, B44_TX_CTRL, val);

   if (!(bp->flags & B44_FLAG_FORCE_LINK) &&
       !b44_readphy(bp, MII_ADVERTISE, &local_adv) &&
       !b44_readphy(bp, MII_LPA, &remote_adv))
    b44_set_flow_ctrl(bp, local_adv, remote_adv);


   netif_carrier_on(bp->dev);
   b44_link_report(bp);
  } else if (netif_carrier_ok(bp->dev) && !(bmsr & BMSR_LSTATUS)) {

   netif_carrier_off(bp->dev);
   b44_link_report(bp);
  }

  if (bmsr & BMSR_RFAULT)
   netdev_warn(bp->dev, "Remote fault detected in PHY\n");
  if (bmsr & BMSR_JCD)
   netdev_warn(bp->dev, "Jabber detected in PHY\n");
 }
}
