
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;
struct b43_phy_ht_channeltab_e_radio2059 {int radio_rxtx98; int radio_rxtx92; int radio_rxtx6e; int radio_rxtx6d; int radio_rxtx6a; int radio_rxtx5a; int radio_rxtx58; int radio_rxtx4a; int radio_syn47; int radio_syn43; int radio_syn41; int radio_syn37; int radio_syn2d; int radio_syn2c; int radio_syn29; int radio_syn28; int radio_syn27; int radio_syn25; int radio_syn22; int radio_syn17; int radio_syn16; } ;





 int b43_radio_mask (struct b43_wldev*,int,int) ;
 int b43_radio_set (struct b43_wldev*,int,int) ;
 int b43_radio_write (struct b43_wldev*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void b43_radio_2059_channel_setup(struct b43_wldev *dev,
   const struct b43_phy_ht_channeltab_e_radio2059 *e)
{
 static const u16 routing[] = { 130, 129, 128, };
 u16 r;
 int core;

 b43_radio_write(dev, 0x16, e->radio_syn16);
 b43_radio_write(dev, 0x17, e->radio_syn17);
 b43_radio_write(dev, 0x22, e->radio_syn22);
 b43_radio_write(dev, 0x25, e->radio_syn25);
 b43_radio_write(dev, 0x27, e->radio_syn27);
 b43_radio_write(dev, 0x28, e->radio_syn28);
 b43_radio_write(dev, 0x29, e->radio_syn29);
 b43_radio_write(dev, 0x2c, e->radio_syn2c);
 b43_radio_write(dev, 0x2d, e->radio_syn2d);
 b43_radio_write(dev, 0x37, e->radio_syn37);
 b43_radio_write(dev, 0x41, e->radio_syn41);
 b43_radio_write(dev, 0x43, e->radio_syn43);
 b43_radio_write(dev, 0x47, e->radio_syn47);

 for (core = 0; core < 3; core++) {
  r = routing[core];
  b43_radio_write(dev, r | 0x4a, e->radio_rxtx4a);
  b43_radio_write(dev, r | 0x58, e->radio_rxtx58);
  b43_radio_write(dev, r | 0x5a, e->radio_rxtx5a);
  b43_radio_write(dev, r | 0x6a, e->radio_rxtx6a);
  b43_radio_write(dev, r | 0x6d, e->radio_rxtx6d);
  b43_radio_write(dev, r | 0x6e, e->radio_rxtx6e);
  b43_radio_write(dev, r | 0x92, e->radio_rxtx92);
  b43_radio_write(dev, r | 0x98, e->radio_rxtx98);
 }

 udelay(50);


 b43_radio_mask(dev, 0x2b, ~0x1);
 b43_radio_mask(dev, 0x2e, ~0x4);
 b43_radio_set(dev, 0x2e, 0x4);
 b43_radio_set(dev, 0x2b, 0x1);

 udelay(300);
}
