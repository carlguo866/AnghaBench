
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_PHY_N_BMODE (int) ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int) ;

__attribute__((used)) static void bwn_nphy_bphy_init(struct bwn_mac *mac)
{
 unsigned int i;
 uint16_t val;

 val = 0x1E1F;
 for (i = 0; i < 16; i++) {
  BWN_PHY_WRITE(mac, BWN_PHY_N_BMODE(0x88 + i), val);
  val -= 0x202;
 }
 val = 0x3E3F;
 for (i = 0; i < 16; i++) {
  BWN_PHY_WRITE(mac, BWN_PHY_N_BMODE(0x98 + i), val);
  val -= 0x202;
 }
 BWN_PHY_WRITE(mac, BWN_PHY_N_BMODE(0x38), 0x668);
}
