
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int phy_flags; int phy_id; } ;


 int MII_TG3_AUXCTL_ACTL_EXTLOOPBK ;
 int MII_TG3_AUXCTL_SHDWSEL_AUXCTL ;
 int TG3_PHYFLG_IS_FET ;
 int TG3_PHY_ID_BCM5401 ;
 int TG3_PHY_ID_MASK ;
 int tg3_phy_auxctl_read (struct tg3*,int ,int*) ;
 int tg3_phy_auxctl_write (struct tg3*,int ,int) ;

__attribute__((used)) static int tg3_phy_set_extloopbk(struct tg3 *tp)
{
 int err;
 u32 val;

 if (tp->phy_flags & TG3_PHYFLG_IS_FET)
  return 0;

 if ((tp->phy_id & TG3_PHY_ID_MASK) == TG3_PHY_ID_BCM5401) {

  err = tg3_phy_auxctl_write(tp,
        MII_TG3_AUXCTL_SHDWSEL_AUXCTL,
        MII_TG3_AUXCTL_ACTL_EXTLOOPBK |
        0x4c20);
  goto done;
 }

 err = tg3_phy_auxctl_read(tp,
      MII_TG3_AUXCTL_SHDWSEL_AUXCTL, &val);
 if (err)
  return err;

 val |= MII_TG3_AUXCTL_ACTL_EXTLOOPBK;
 err = tg3_phy_auxctl_write(tp,
       MII_TG3_AUXCTL_SHDWSEL_AUXCTL, val);

done:
 return err;
}
