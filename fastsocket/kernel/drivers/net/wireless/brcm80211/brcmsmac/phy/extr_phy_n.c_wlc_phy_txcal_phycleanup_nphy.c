
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {int * tx_rx_cal_phy_saveregs; TYPE_1__ pubpi; int radio_chanspec; int internal_tx_iqlo_cal_tapoff_intpa_nphy; scalar_t__ use_int_tx_iqlo_cal_nphy; } ;


 scalar_t__ CHSPEC_IS2G (int ) ;
 int NPHY_REV7_RFCTRLOVERRIDE_ID0 ;
 int NPHY_REV7_RFCTRLOVERRIDE_ID1 ;
 int NPHY_TBL_ID_AFECTRL ;
 scalar_t__ NREV_GE (int ,int) ;
 scalar_t__ NREV_IS (int ,int) ;
 int RADIO_2057_IPA5G_CASCOFFV_PU_CORE0 ;
 int RADIO_2057_IPA5G_CASCOFFV_PU_CORE1 ;
 int RADIO_2057_OVR_REG0 ;
 int RADIO_2057_PAD2G_TUNE_PUS_CORE0 ;
 int RADIO_2057_PAD2G_TUNE_PUS_CORE1 ;
 int mod_phy_reg (struct brcms_phy*,int,int,int ) ;
 int mod_radio_reg (struct brcms_phy*,int ,int,int) ;
 int wlc_phy_resetcca_nphy (struct brcms_phy*) ;
 int wlc_phy_rfctrl_override_nphy_rev7 (struct brcms_phy*,int,int ,int,int,int ) ;
 int wlc_phy_table_write_nphy (struct brcms_phy*,int ,int,int,int,int *) ;
 int write_phy_reg (struct brcms_phy*,int,int ) ;

__attribute__((used)) static void wlc_phy_txcal_phycleanup_nphy(struct brcms_phy *pi)
{
 u16 mask;

 if (NREV_GE(pi->pubpi.phy_rev, 3)) {
  write_phy_reg(pi, 0xa6, pi->tx_rx_cal_phy_saveregs[0]);
  write_phy_reg(pi, 0xa7, pi->tx_rx_cal_phy_saveregs[1]);
  write_phy_reg(pi, 0x8f, pi->tx_rx_cal_phy_saveregs[2]);
  write_phy_reg(pi, 0xa5, pi->tx_rx_cal_phy_saveregs[3]);
  write_phy_reg(pi, 0x01, pi->tx_rx_cal_phy_saveregs[4]);

  wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_AFECTRL, 1, 3, 16,
      &pi->tx_rx_cal_phy_saveregs[5]);
  wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_AFECTRL, 1, 19, 16,
      &pi->tx_rx_cal_phy_saveregs[6]);

  write_phy_reg(pi, 0x91, pi->tx_rx_cal_phy_saveregs[7]);
  write_phy_reg(pi, 0x92, pi->tx_rx_cal_phy_saveregs[8]);

  write_phy_reg(pi, 0x297, pi->tx_rx_cal_phy_saveregs[9]);
  write_phy_reg(pi, 0x29b, pi->tx_rx_cal_phy_saveregs[10]);

  if (NREV_IS(pi->pubpi.phy_rev, 7)
      || NREV_GE(pi->pubpi.phy_rev, 8))
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 7), 0, 0,
    1,
    NPHY_REV7_RFCTRLOVERRIDE_ID1);

  wlc_phy_resetcca_nphy(pi);

  if (pi->use_int_tx_iqlo_cal_nphy
      && !(pi->internal_tx_iqlo_cal_tapoff_intpa_nphy)) {

   if (NREV_IS(pi->pubpi.phy_rev, 7)) {
    if (CHSPEC_IS2G(pi->radio_chanspec)) {
     mod_radio_reg(
      pi,
      RADIO_2057_PAD2G_TUNE_PUS_CORE0,
      1, 1);
     mod_radio_reg(
      pi,
      RADIO_2057_PAD2G_TUNE_PUS_CORE1,
      1, 1);
    } else {
     mod_radio_reg(
          pi,
          RADIO_2057_IPA5G_CASCOFFV_PU_CORE0,
          1, 1);
     mod_radio_reg(
          pi,
          RADIO_2057_IPA5G_CASCOFFV_PU_CORE1,
          1, 1);
    }

    mod_radio_reg(pi, RADIO_2057_OVR_REG0, 1 << 4,
           0);
   } else if (NREV_GE(pi->pubpi.phy_rev, 8)) {
    wlc_phy_rfctrl_override_nphy_rev7(
     pi,
     (0x1 << 3), 0,
     0x3, 1,
     NPHY_REV7_RFCTRLOVERRIDE_ID0);
   }
  }
 } else {
  mask = ((0x3 << 12) | (0x3 << 14));
  mod_phy_reg(pi, 0xa6, mask, pi->tx_rx_cal_phy_saveregs[0]);
  mod_phy_reg(pi, 0xa7, mask, pi->tx_rx_cal_phy_saveregs[1]);
  write_phy_reg(pi, 0xa5, pi->tx_rx_cal_phy_saveregs[2]);

  wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_AFECTRL, 1, 2, 16,
      &pi->tx_rx_cal_phy_saveregs[3]);

  wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_AFECTRL, 1, 18, 16,
      &pi->tx_rx_cal_phy_saveregs[4]);

  write_phy_reg(pi, 0x91, pi->tx_rx_cal_phy_saveregs[5]);
  write_phy_reg(pi, 0x92, pi->tx_rx_cal_phy_saveregs[6]);
 }
}
