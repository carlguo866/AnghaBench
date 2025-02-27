
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rx_drvinfo_819x_usb {scalar_t__ RxRate; scalar_t__ BW; scalar_t__ RxHT; } ;
struct TYPE_6__ {long* rxSNRdB; int * received_bwtype; int numqry_phystatusHT; int numqry_phystatusCCK; int numqry_phystatus; } ;
struct r8192_priv {int NumTotalRFPath; TYPE_2__ stats; TYPE_1__* ieee80211; scalar_t__* brfpath_rxenable; int bCckHighPower; } ;
struct phy_ofdm_rx_status_rxsc_sgien_exintfflag {int rxsc; } ;
struct ieee80211_rx_stats {int bPacketMatchBSSID; int bPacketToSelf; int bIsCCK; int bPacketBeacon; int bToSelfBA; int* RxMIMOSignalQuality; int RxPWDBAll; int RecvSignalPower; int SignalQuality; int* RxMIMOSignalStrength; int RxPower; int SignalStrength; } ;
typedef int s8 ;
struct TYPE_7__ {int* trsw_gain_X; int* rxsnr_X; int pwdb_all; int* rxevm_X; int rxsc_sgien_exflg; } ;
typedef TYPE_3__ phy_sts_ofdm_819xusb_t ;
struct TYPE_8__ {int cck_agc_rpt; int sq_rpt; } ;
typedef TYPE_4__ phy_sts_cck_819xusb_t ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ DESC90_RATEMCS15 ;
 scalar_t__ DESC90_RATEMCS8 ;
 int RF90_PATH_A ;
 int memset (struct ieee80211_rx_stats*,int ,int) ;
 int rtl8192_phy_CheckIsLegalRFPath (int ,int) ;
 int rtl819x_evm_dbtopercentage (int) ;
 int rtl819x_query_rxpwrpercentage (int) ;
 scalar_t__ rtl819x_signal_scale_mapping (long) ;
 int rx_hal_is_cck_rate (struct rx_drvinfo_819x_usb*) ;

__attribute__((used)) static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
          struct ieee80211_rx_stats *pstats,
          struct rx_drvinfo_819x_usb *pdrvinfo,
          struct ieee80211_rx_stats *precord_stats,
          bool bpacket_match_bssid,
          bool bpacket_toself,
          bool bPacketBeacon,
          bool bToSelfBA)
{
 phy_sts_ofdm_819xusb_t *pofdm_buf;
 phy_sts_cck_819xusb_t *pcck_buf;
 struct phy_ofdm_rx_status_rxsc_sgien_exintfflag *prxsc;
 u8 *prxpkt;
 u8 i, max_spatial_stream, tmp_rxsnr, tmp_rxevm, rxsc_sgien_exflg;
 s8 rx_pwr[4], rx_pwr_all = 0;
 s8 rx_snrX, rx_evmX;
 u8 evm, pwdb_all;
 u32 RSSI, total_rssi = 0;
 u8 is_cck_rate = 0;
 u8 rf_rx_num = 0;
 u8 sq;


 priv->stats.numqry_phystatus++;

 is_cck_rate = rx_hal_is_cck_rate(pdrvinfo);


 memset(precord_stats, 0, sizeof(struct ieee80211_rx_stats));
 pstats->bPacketMatchBSSID =
  precord_stats->bPacketMatchBSSID = bpacket_match_bssid;
 pstats->bPacketToSelf = precord_stats->bPacketToSelf = bpacket_toself;
 pstats->bIsCCK = precord_stats->bIsCCK = is_cck_rate;
 pstats->bPacketBeacon = precord_stats->bPacketBeacon = bPacketBeacon;
 pstats->bToSelfBA = precord_stats->bToSelfBA = bToSelfBA;

 prxpkt = (u8 *)pdrvinfo;


 prxpkt += sizeof(struct rx_drvinfo_819x_usb);


 pcck_buf = (phy_sts_cck_819xusb_t *)prxpkt;
 pofdm_buf = (phy_sts_ofdm_819xusb_t *)prxpkt;

 pstats->RxMIMOSignalQuality[0] = -1;
 pstats->RxMIMOSignalQuality[1] = -1;
 precord_stats->RxMIMOSignalQuality[0] = -1;
 precord_stats->RxMIMOSignalQuality[1] = -1;

 if (is_cck_rate) {





  u8 report;

  priv->stats.numqry_phystatusCCK++;

  if (!priv->bCckHighPower) {
   report = pcck_buf->cck_agc_rpt & 0xc0;
   report >>= 6;
   switch (report) {
   case 0x3:
    rx_pwr_all = -35 - (pcck_buf->cck_agc_rpt & 0x3e);
    break;
   case 0x2:
    rx_pwr_all = -23 - (pcck_buf->cck_agc_rpt & 0x3e);
    break;
   case 0x1:
    rx_pwr_all = -11 - (pcck_buf->cck_agc_rpt & 0x3e);
    break;
   case 0x0:
    rx_pwr_all = 6 - (pcck_buf->cck_agc_rpt & 0x3e);
    break;
   }
  } else {
   report = pcck_buf->cck_agc_rpt & 0x60;
   report >>= 5;
   switch (report) {
   case 0x3:
    rx_pwr_all = -35 - ((pcck_buf->cck_agc_rpt & 0x1f) << 1);
    break;
   case 0x2:
    rx_pwr_all = -23 - ((pcck_buf->cck_agc_rpt & 0x1f) << 1);
    break;
   case 0x1:
    rx_pwr_all = -11 - ((pcck_buf->cck_agc_rpt & 0x1f) << 1);
    break;
   case 0x0:
    rx_pwr_all = 6 - ((pcck_buf->cck_agc_rpt & 0x1f) << 1);
    break;
   }
  }

  pwdb_all = rtl819x_query_rxpwrpercentage(rx_pwr_all);
  pstats->RxPWDBAll = precord_stats->RxPWDBAll = pwdb_all;
  pstats->RecvSignalPower = pwdb_all;



  if (pstats->RxPWDBAll > 40) {
   sq = 100;
  } else {
   sq = pcck_buf->sq_rpt;

   if (pcck_buf->sq_rpt > 64)
    sq = 0;
   else if (pcck_buf->sq_rpt < 20)
    sq = 100;
   else
    sq = ((64 - sq) * 100) / 44;
  }
  pstats->SignalQuality = precord_stats->SignalQuality = sq;
  pstats->RxMIMOSignalQuality[0] =
   precord_stats->RxMIMOSignalQuality[0] = sq;
  pstats->RxMIMOSignalQuality[1] =
   precord_stats->RxMIMOSignalQuality[1] = -1;

 } else {
  priv->stats.numqry_phystatusHT++;


  for (i = RF90_PATH_A; i < priv->NumTotalRFPath; i++) {

   if (priv->brfpath_rxenable[i])
    rf_rx_num++;
   else
    continue;

   if (!rtl8192_phy_CheckIsLegalRFPath(
     priv->ieee80211->dev, i))
    continue;

   rx_pwr[i] =
    ((pofdm_buf->trsw_gain_X[i] & 0x3F) * 2) - 106;


   tmp_rxsnr = pofdm_buf->rxsnr_X[i];
   rx_snrX = (s8)(tmp_rxsnr);
   rx_snrX /= 2;
   priv->stats.rxSNRdB[i] = (long)rx_snrX;


   RSSI = rtl819x_query_rxpwrpercentage(rx_pwr[i]);
   total_rssi += RSSI;


   pstats->RxMIMOSignalStrength[i] = (u8)RSSI;
   precord_stats->RxMIMOSignalStrength[i] = (u8)RSSI;
  }





  rx_pwr_all = (((pofdm_buf->pwdb_all) >> 1) & 0x7f) - 106;
  pwdb_all = rtl819x_query_rxpwrpercentage(rx_pwr_all);

  pstats->RxPWDBAll = precord_stats->RxPWDBAll = pwdb_all;
  pstats->RxPower = precord_stats->RxPower = rx_pwr_all;


  if (pdrvinfo->RxHT && pdrvinfo->RxRate >= DESC90_RATEMCS8 &&
      pdrvinfo->RxRate <= DESC90_RATEMCS15)

   max_spatial_stream = 2;
  else

   max_spatial_stream = 1;

  for (i = 0; i < max_spatial_stream; i++) {
   tmp_rxevm = pofdm_buf->rxevm_X[i];
   rx_evmX = (s8)(tmp_rxevm);
   rx_evmX /= 2;

   evm = rtl819x_evm_dbtopercentage(rx_evmX);
   if (i == 0)



    pstats->SignalQuality =
     precord_stats->SignalQuality =
     evm & 0xff;
   pstats->RxMIMOSignalQuality[i] =
    precord_stats->RxMIMOSignalQuality[i] =
    evm & 0xff;
  }



  rxsc_sgien_exflg = pofdm_buf->rxsc_sgien_exflg;
  prxsc = (struct phy_ofdm_rx_status_rxsc_sgien_exintfflag *)
   &rxsc_sgien_exflg;
  if (pdrvinfo->BW)
   priv->stats.received_bwtype[1 + prxsc->rxsc]++;
  else
   priv->stats.received_bwtype[0]++;
 }





 if (is_cck_rate) {
  pstats->SignalStrength =
   precord_stats->SignalStrength =
   (u8)(rtl819x_signal_scale_mapping((long)pwdb_all));
 } else {

  if (rf_rx_num != 0) {
   pstats->SignalStrength =
    precord_stats->SignalStrength =
    (u8)(rtl819x_signal_scale_mapping((long)(total_rssi /= rf_rx_num)));
  }
 }
}
