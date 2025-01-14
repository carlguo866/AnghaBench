
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_phy {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_n {int bb_mult_save; int lpf_bw_overrode_for_sample_play; scalar_t__ hang_avoid; } ;


 int B43_NPHY_IQLOCAL_CMDGCTL ;
 int B43_NPHY_SAMP_CMD ;
 int B43_NPHY_SAMP_CMD_STOP ;
 int B43_NPHY_SAMP_STAT ;
 int B43_NTAB16 (int,int) ;
 int b43_nphy_rf_ctl_override_rev19 (struct b43_wldev*,int,int ,int ,int,int) ;
 int b43_nphy_rf_ctl_override_rev7 (struct b43_wldev*,int,int ,int ,int,int) ;
 int b43_nphy_stay_in_carrier_search (struct b43_wldev*,int) ;
 int b43_ntab_write (struct b43_wldev*,int ,int) ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_set (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_nphy_stop_playback(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_n *nphy = dev->phy.n;
 u16 tmp;

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 1);

 tmp = b43_phy_read(dev, B43_NPHY_SAMP_STAT);
 if (tmp & 0x1)
  b43_phy_set(dev, B43_NPHY_SAMP_CMD, B43_NPHY_SAMP_CMD_STOP);
 else if (tmp & 0x2)
  b43_phy_mask(dev, B43_NPHY_IQLOCAL_CMDGCTL, 0x7FFF);

 b43_phy_mask(dev, B43_NPHY_SAMP_CMD, ~0x0004);

 if (nphy->bb_mult_save & 0x80000000) {
  tmp = nphy->bb_mult_save & 0xFFFF;
  b43_ntab_write(dev, B43_NTAB16(15, 87), tmp);
  nphy->bb_mult_save = 0;
 }

 if (phy->rev >= 7 && nphy->lpf_bw_overrode_for_sample_play) {
  if (phy->rev >= 19)
   b43_nphy_rf_ctl_override_rev19(dev, 0x80, 0, 0, 1,
             1);
  else
   b43_nphy_rf_ctl_override_rev7(dev, 0x80, 0, 0, 1, 1);
  nphy->lpf_bw_overrode_for_sample_play = 0;
 }

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 0);
}
