
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct phytbl_info {int tbl_width; int tbl_len; int* tbl_ptr; scalar_t__ tbl_offset; int tbl_id; } ;
struct lcnphy_tx_gain_tbl_entry {int gm; int pad; int pga; int dac; int bb_mult; } ;
struct brcms_phy {TYPE_1__* sh; int radio_chanspec; } ;
struct TYPE_2__ {int boardflags; } ;


 int BFL_FEM ;
 scalar_t__ CHSPEC_IS5G (int ) ;
 int LCNPHY_TBL_ID_TXPWRCTL ;
 scalar_t__ LCNPHY_TX_PWR_CTRL_GAIN_OFFSET ;
 scalar_t__ LCNPHY_TX_PWR_CTRL_IQ_OFFSET ;
 int wlc_lcnphy_write_table (struct brcms_phy*,struct phytbl_info*) ;

__attribute__((used)) static void
wlc_lcnphy_load_tx_gain_table(struct brcms_phy *pi,
         const struct lcnphy_tx_gain_tbl_entry *gain_table)
{
 u32 j;
 struct phytbl_info tab;
 u32 val;
 u16 pa_gain;
 u16 gm_gain;

 if (CHSPEC_IS5G(pi->radio_chanspec))
  pa_gain = 0x70;
 else
  pa_gain = 0x70;

 if (pi->sh->boardflags & BFL_FEM)
  pa_gain = 0x10;
 tab.tbl_id = LCNPHY_TBL_ID_TXPWRCTL;
 tab.tbl_width = 32;
 tab.tbl_len = 1;
 tab.tbl_ptr = &val;

 for (j = 0; j < 128; j++) {
  gm_gain = gain_table[j].gm;
  val = (((u32) pa_gain << 24) |
         (gain_table[j].pad << 16) |
         (gain_table[j].pga << 8) | gm_gain);

  tab.tbl_offset = LCNPHY_TX_PWR_CTRL_GAIN_OFFSET + j;
  wlc_lcnphy_write_table(pi, &tab);

  val = (gain_table[j].dac << 28) | (gain_table[j].bb_mult << 20);
  tab.tbl_offset = LCNPHY_TX_PWR_CTRL_IQ_OFFSET + j;
  wlc_lcnphy_write_table(pi, &tab);
 }
}
