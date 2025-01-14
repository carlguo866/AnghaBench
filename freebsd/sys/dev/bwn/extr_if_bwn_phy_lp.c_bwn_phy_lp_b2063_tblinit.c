
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_curchan; } ;
struct bwn_softc {struct ieee80211com sc_ic; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;
struct bwn_b206x_rfinit_entry {int member_1; int member_2; int member_3; int const br_flags; int br_valuea; int br_offset; int br_valueg; int member_0; } ;
 int BWN_RF_WRITE (struct bwn_mac*,int ,int ) ;


 scalar_t__ IEEE80211_IS_CHAN_2GHZ (int ) ;
 unsigned int N (struct bwn_b206x_rfinit_entry const*) ;

__attribute__((used)) static void
bwn_phy_lp_b2063_tblinit(struct bwn_mac *mac)
{


 struct bwn_softc *sc = mac->mac_sc;
 struct ieee80211com *ic = &sc->sc_ic;
 static const struct bwn_b206x_rfinit_entry bwn_b2063_init_tab[] = {
  { 162, 0x0, 0x0, 0x02, },
  { 161, 0x1, 0x0, 0x01, },
  { 160, 0x0, 0x0, 0x02, },
  { 159, 0x0, 0x0, 0x02, },
  { 158, 0x0, 0x0, 0x02, },
  { 157, 0x0, 0x0, 0x02, },
  { 156, 0x0, 0x0, 0x02, },
  { 155, 0x0, 0x0, 0x02, },
  { 154, 0x0, 0x0, 0x02, },
  { 153, 0x0, 0x0, 0x02, },
  { 152, 0x0, 0x0, 0x02, },
  { 143, 0xe8, 0xd4, 0x01 | 0x02, },
  { 142, 0xa7, 0x53, 0x01 | 0x02, },
  { 141, 0xf0, 0xf, 0x01 | 0x02, },
  { 149, 0x1f, 0x5e, 0x02, },
  { 147, 0x7f, 0x7e, 0x02, },
  { 146, 0x30, 0xf0, 0x02, },
  { 145, 0x7f, 0x7f, 0x01 | 0x02, },
  { 148, 0xc, 0xc, 0x01 | 0x02, },
  { 166, 0x3c, 0x3f, 0x01, },
  { 165, 0xfc, 0xfe, 0x01, },
  { 164, 0x8, 0x8, 0x01 | 0x02, },
  { 137, 0x60, 0x60, 0x01 | 0x02, },
  { 136, 0x30, 0x30, 0x01 | 0x02, },
  { 132, 0xc, 0xb, 0x01 | 0x02, },
  { 131, 0x10, 0xf, 0x01 | 0x02, },
  { 139, 0x3d, 0xfd, 0x01 | 0x02, },
  { 133, 0x2, 0x2, 0x01 | 0x02, },
  { 163, 0x56, 0x56, 0x01 | 0x02, },
  { 144, 0xF7, 0xF7, 0x01 | 0x02, },
  { 151, 0x71, 0x71, 0x01 | 0x02, },
  { 150, 0x71, 0x71, 0x01 | 0x02, },
  { 171, 0xf0, 0x30, 0x01, },
  { 167, 0x77, 0x77, 0x01 | 0x02, },
  { 170, 0x3, 0x3, 0x01 | 0x02, },
  { 169, 0xf, 0xf, 0x01 | 0x02, },
  { 168, 0xf, 0xf, 0x01 | 0x02, },
  { 135, 0x77, 0x77, 0x01 | 0x02, },
  { 134, 0x77, 0x77, 0x01 | 0x02, },
  { 138, 0x4, 0x4, 0x01 | 0x02, },
  { 140, 0x0, 0x4, 0x01, },
  { 130, 0x3, 0x3, 0x01 | 0x02, },
 };
 const struct bwn_b206x_rfinit_entry *br;
 unsigned int i;

 for (i = 0; i < N(bwn_b2063_init_tab); i++) {
  br = &bwn_b2063_init_tab[i];
  if (IEEE80211_IS_CHAN_2GHZ(ic->ic_curchan)) {
   if (br->br_flags & 0x02)
    BWN_RF_WRITE(mac, br->br_offset, br->br_valueg);
  } else {
   if (br->br_flags & 0x01)
    BWN_RF_WRITE(mac, br->br_offset, br->br_valuea);
  }
 }


}
