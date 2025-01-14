
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct bwn_nphy_iq_est {int i0_pwr; int q0_pwr; int iq0_prod; int i1_pwr; int q1_pwr; int iq1_prod; } ;
struct bwn_mac {int dummy; } ;


 int BWN_NPHY_IQEST_CMD ;
 int BWN_NPHY_IQEST_CMD_MODE ;
 int BWN_NPHY_IQEST_CMD_START ;
 int BWN_NPHY_IQEST_IPACC_HI0 ;
 int BWN_NPHY_IQEST_IPACC_HI1 ;
 int BWN_NPHY_IQEST_IPACC_LO0 ;
 int BWN_NPHY_IQEST_IPACC_LO1 ;
 int BWN_NPHY_IQEST_IQACC_HI0 ;
 int BWN_NPHY_IQEST_IQACC_HI1 ;
 int BWN_NPHY_IQEST_IQACC_LO0 ;
 int BWN_NPHY_IQEST_IQACC_LO1 ;
 int BWN_NPHY_IQEST_QPACC_HI0 ;
 int BWN_NPHY_IQEST_QPACC_HI1 ;
 int BWN_NPHY_IQEST_QPACC_LO0 ;
 int BWN_NPHY_IQEST_QPACC_LO1 ;
 int BWN_NPHY_IQEST_SAMCNT ;
 int BWN_NPHY_IQEST_WT ;
 int BWN_NPHY_IQEST_WT_VAL ;
 int BWN_PHY_MASK (struct bwn_mac*,int ,int) ;
 int BWN_PHY_READ (struct bwn_mac*,int ) ;
 int BWN_PHY_SET (struct bwn_mac*,int ,int) ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int ,int ,int ) ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int) ;
 int DELAY (int) ;
 int memset (struct bwn_nphy_iq_est*,int ,int) ;

__attribute__((used)) static void bwn_nphy_rx_iq_est(struct bwn_mac *mac, struct bwn_nphy_iq_est *est,
    uint16_t samps, uint8_t time, bool wait)
{
 int i;
 uint16_t tmp;

 BWN_PHY_WRITE(mac, BWN_NPHY_IQEST_SAMCNT, samps);
 BWN_PHY_SETMASK(mac, BWN_NPHY_IQEST_WT, ~BWN_NPHY_IQEST_WT_VAL, time);
 if (wait)
  BWN_PHY_SET(mac, BWN_NPHY_IQEST_CMD, BWN_NPHY_IQEST_CMD_MODE);
 else
  BWN_PHY_MASK(mac, BWN_NPHY_IQEST_CMD, ~BWN_NPHY_IQEST_CMD_MODE);

 BWN_PHY_SET(mac, BWN_NPHY_IQEST_CMD, BWN_NPHY_IQEST_CMD_START);

 for (i = 1000; i; i--) {
  tmp = BWN_PHY_READ(mac, BWN_NPHY_IQEST_CMD);
  if (!(tmp & BWN_NPHY_IQEST_CMD_START)) {
   est->i0_pwr = (BWN_PHY_READ(mac, BWN_NPHY_IQEST_IPACC_HI0) << 16) |
     BWN_PHY_READ(mac, BWN_NPHY_IQEST_IPACC_LO0);
   est->q0_pwr = (BWN_PHY_READ(mac, BWN_NPHY_IQEST_QPACC_HI0) << 16) |
     BWN_PHY_READ(mac, BWN_NPHY_IQEST_QPACC_LO0);
   est->iq0_prod = (BWN_PHY_READ(mac, BWN_NPHY_IQEST_IQACC_HI0) << 16) |
     BWN_PHY_READ(mac, BWN_NPHY_IQEST_IQACC_LO0);

   est->i1_pwr = (BWN_PHY_READ(mac, BWN_NPHY_IQEST_IPACC_HI1) << 16) |
     BWN_PHY_READ(mac, BWN_NPHY_IQEST_IPACC_LO1);
   est->q1_pwr = (BWN_PHY_READ(mac, BWN_NPHY_IQEST_QPACC_HI1) << 16) |
     BWN_PHY_READ(mac, BWN_NPHY_IQEST_QPACC_LO1);
   est->iq1_prod = (BWN_PHY_READ(mac, BWN_NPHY_IQEST_IQACC_HI1) << 16) |
     BWN_PHY_READ(mac, BWN_NPHY_IQEST_IQACC_LO1);
   return;
  }
  DELAY(10);
 }
 memset(est, 0, sizeof(*est));
}
