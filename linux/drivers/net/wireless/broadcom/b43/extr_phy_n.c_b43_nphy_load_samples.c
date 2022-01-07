
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct cordic_iq {int i; int q; } ;
struct TYPE_2__ {struct b43_phy_n* n; } ;
struct b43_wldev {int wl; TYPE_1__ phy; } ;
struct b43_phy_n {scalar_t__ hang_avoid; } ;


 int B43_NTAB32 (int,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int b43_nphy_stay_in_carrier_search (struct b43_wldev*,int) ;
 int b43_ntab_write_bulk (struct b43_wldev*,int ,size_t,int*) ;
 int b43err (int ,char*) ;
 int* kcalloc (size_t,int,int ) ;
 int kfree (int*) ;

__attribute__((used)) static int b43_nphy_load_samples(struct b43_wldev *dev,
     struct cordic_iq *samples, u16 len) {
 struct b43_phy_n *nphy = dev->phy.n;
 u16 i;
 u32 *data;

 data = kcalloc(len, sizeof(u32), GFP_KERNEL);
 if (!data) {
  b43err(dev->wl, "allocation for samples loading failed\n");
  return -ENOMEM;
 }
 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 1);

 for (i = 0; i < len; i++) {
  data[i] = (samples[i].i & 0x3FF << 10);
  data[i] |= samples[i].q & 0x3FF;
 }
 b43_ntab_write_bulk(dev, B43_NTAB32(17, 0), len, data);

 kfree(data);
 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 0);
 return 0;
}
