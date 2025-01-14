
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 unsigned int ADVERTISED_10000baseT_Full ;
 unsigned int ADVERTISED_1000baseT_Full ;
 unsigned int ADVERTISED_Asym_Pause ;
 unsigned int ADVERTISED_Pause ;
 int ADVERTISE_10000FULL ;
 int ADVERTISE_CSMA ;
 int ADVERTISE_ENPAGE ;
 int ADVERTISE_LOOP_TIMING ;
 int ADVERTISE_NPAGE ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int ANEG_10G_CTRL ;
 int ANEG_ADVER ;
 int EINVAL ;
 int MDIO_DEV_ANEG ;
 int mdio_write (struct cphy*,int ,int ,int) ;

__attribute__((used)) static int tn1010_advertise(struct cphy *phy, unsigned int advert)
{
 int err, val;

 if (!(advert & ADVERTISED_1000baseT_Full))
  return -EINVAL;

 val = ADVERTISE_CSMA | ADVERTISE_ENPAGE | ADVERTISE_NPAGE;
 if (advert & ADVERTISED_Pause)
  val |= ADVERTISE_PAUSE_CAP;
 if (advert & ADVERTISED_Asym_Pause)
  val |= ADVERTISE_PAUSE_ASYM;
 err = mdio_write(phy, MDIO_DEV_ANEG, ANEG_ADVER, val);
 if (err)
  return err;

 val = (advert & ADVERTISED_10000baseT_Full) ? ADVERTISE_10000FULL : 0;
 return mdio_write(phy, MDIO_DEV_ANEG, ANEG_10G_CTRL, val |
     ADVERTISE_LOOP_TIMING);
}
