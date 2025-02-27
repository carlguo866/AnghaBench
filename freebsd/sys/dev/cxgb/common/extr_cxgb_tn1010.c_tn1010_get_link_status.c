
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 unsigned int ADVERTISE_PAUSE_ASYM ;
 unsigned int ADVERTISE_PAUSE_CAP ;
 int ANEG_ADVER ;
 scalar_t__ ANEG_COMPLETE ;
 int ANEG_LPA ;
 int DUPLEX_FULL ;
 unsigned int F_ANEG_SPEED_1G ;
 unsigned int F_LINK_STAT ;
 scalar_t__ G_ANEG_STAT (unsigned int) ;
 int MDIO_DEV_ANEG ;
 int MDIO_DEV_VEND1 ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 int PHY_LINK_DOWN ;
 int PHY_LINK_UP ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int TN1010_VEND1_STAT ;
 int mdio_read (struct cphy*,int ,int ,unsigned int*) ;

__attribute__((used)) static int tn1010_get_link_status(struct cphy *phy, int *link_state,
      int *speed, int *duplex, int *fc)
{
 unsigned int status, lpa, adv;
 int err, sp = -1, pause = 0;

 err = mdio_read(phy, MDIO_DEV_VEND1, TN1010_VEND1_STAT, &status);
 if (err)
  return err;

 if (link_state)
  *link_state = status & F_LINK_STAT ? PHY_LINK_UP :
      PHY_LINK_DOWN;

 if (G_ANEG_STAT(status) == ANEG_COMPLETE) {
  sp = (status & F_ANEG_SPEED_1G) ? SPEED_1000 : SPEED_10000;

  if (fc) {
   err = mdio_read(phy, MDIO_DEV_ANEG, ANEG_LPA, &lpa);
   if (!err)
    err = mdio_read(phy, MDIO_DEV_ANEG, ANEG_ADVER,
      &adv);
   if (err)
    return err;

   if (lpa & adv & ADVERTISE_PAUSE_CAP)
    pause = PAUSE_RX | PAUSE_TX;
   else if ((lpa & ADVERTISE_PAUSE_CAP) &&
     (lpa & ADVERTISE_PAUSE_ASYM) &&
     (adv & ADVERTISE_PAUSE_ASYM))
    pause = PAUSE_TX;
   else if ((lpa & ADVERTISE_PAUSE_ASYM) &&
     (adv & ADVERTISE_PAUSE_CAP))
    pause = PAUSE_RX;
  }
 }
 if (speed)
  *speed = sp;
 if (duplex)
  *duplex = DUPLEX_FULL;
 if (fc)
  *fc = pause;
 return 0;
}
