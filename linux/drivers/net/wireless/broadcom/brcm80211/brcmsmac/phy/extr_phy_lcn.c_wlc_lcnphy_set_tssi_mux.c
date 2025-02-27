
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;
typedef enum lcnphy_tssi_mode { ____Placeholder_lcnphy_tssi_mode } lcnphy_tssi_mode ;


 int LCNPHY_TSSI_EXT ;
 int LCNPHY_TSSI_POST_PA ;
 scalar_t__ LCNREV_IS (int ,int) ;
 int RADIO_2064_REG005 ;
 int RADIO_2064_REG028 ;
 int RADIO_2064_REG029 ;
 int RADIO_2064_REG035 ;
 int RADIO_2064_REG036 ;
 int RADIO_2064_REG03A ;
 int RADIO_2064_REG07F ;
 int RADIO_2064_REG086 ;
 int RADIO_2064_REG112 ;
 int RADIO_2064_REG11A ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int mod_radio_reg (struct brcms_phy*,int ,int,int) ;
 int write_radio_reg (struct brcms_phy*,int ,int) ;

__attribute__((used)) static void
wlc_lcnphy_set_tssi_mux(struct brcms_phy *pi, enum lcnphy_tssi_mode pos)
{
 mod_phy_reg(pi, 0x4d7, (0x1 << 0), (0x1) << 0);

 mod_phy_reg(pi, 0x4d7, (0x1 << 6), (1) << 6);

 if (LCNPHY_TSSI_POST_PA == pos) {
  mod_phy_reg(pi, 0x4d9, (0x1 << 2), (0) << 2);

  mod_phy_reg(pi, 0x4d9, (0x1 << 3), (1) << 3);

  if (LCNREV_IS(pi->pubpi.phy_rev, 2)) {
   mod_radio_reg(pi, RADIO_2064_REG086, 0x4, 0x4);
  } else {
   mod_radio_reg(pi, RADIO_2064_REG03A, 1, 0x1);
   mod_radio_reg(pi, RADIO_2064_REG11A, 0x8, 0x8);
   mod_radio_reg(pi, RADIO_2064_REG028, 0x1, 0x0);
   mod_radio_reg(pi, RADIO_2064_REG11A, 0x4, 1<<2);
   mod_radio_reg(pi, RADIO_2064_REG036, 0x10, 0x0);
   mod_radio_reg(pi, RADIO_2064_REG11A, 0x10, 1<<4);
   mod_radio_reg(pi, RADIO_2064_REG036, 0x3, 0x0);
   mod_radio_reg(pi, RADIO_2064_REG035, 0xff, 0x77);
   mod_radio_reg(pi, RADIO_2064_REG028, 0x1e, 0xe<<1);
   mod_radio_reg(pi, RADIO_2064_REG112, 0x80, 1<<7);
   mod_radio_reg(pi, RADIO_2064_REG005, 0x7, 1<<1);
   mod_radio_reg(pi, RADIO_2064_REG029, 0xf0, 0<<4);
  }
 } else {
  mod_phy_reg(pi, 0x4d9, (0x1 << 2), (0x1) << 2);

  mod_phy_reg(pi, 0x4d9, (0x1 << 3), (0) << 3);

  if (LCNREV_IS(pi->pubpi.phy_rev, 2)) {
   mod_radio_reg(pi, RADIO_2064_REG086, 0x4, 0x4);
  } else {
   mod_radio_reg(pi, RADIO_2064_REG03A, 1, 0);
   mod_radio_reg(pi, RADIO_2064_REG11A, 0x8, 0x8);
  }
 }
 mod_phy_reg(pi, 0x637, (0x3 << 14), (0) << 14);

 if (LCNPHY_TSSI_EXT == pos) {
  write_radio_reg(pi, RADIO_2064_REG07F, 1);
  mod_radio_reg(pi, RADIO_2064_REG005, 0x7, 0x2);
  mod_radio_reg(pi, RADIO_2064_REG112, 0x80, 0x1 << 7);
  mod_radio_reg(pi, RADIO_2064_REG028, 0x1f, 0x3);
 }
}
