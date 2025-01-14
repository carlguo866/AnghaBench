
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint ;
typedef void* u8 ;
typedef int u16 ;
struct txpwr_limits {scalar_t__* ofdm_40_siso; scalar_t__* ofdm_40_cdd; scalar_t__* mcs_40_siso; scalar_t__* mcs_20_cdd; scalar_t__* mcs_40_cdd; scalar_t__* mcs_20_stbc; scalar_t__* mcs_40_stbc; void* mcs32; void** mcs_40_mimo; void** mcs_20_mimo; void** mcs_20_siso; void** ofdm; void** ofdm_cdd; void** cck; } ;
struct locale_mimo_info {int* maxpwr20; int* maxpwr40; } ;
struct ieee80211_channel {int max_power; } ;
struct country_info {int locale_mimo_2G; int locale_mimo_5G; } ;
struct brcms_cm_info {TYPE_5__* world_regd; struct brcms_c_info* wlc; } ;
struct brcms_c_info {struct brcms_band** bandstate; TYPE_4__* pub; } ;
struct brcms_band {scalar_t__ bandtype; int antgain; } ;
struct TYPE_10__ {struct country_info country; } ;
struct TYPE_9__ {TYPE_3__* ieee_hw; } ;
struct TYPE_6__ {struct ieee80211_channel* chan; } ;
struct TYPE_7__ {TYPE_1__ chandef; } ;
struct TYPE_8__ {TYPE_2__ conf; } ;


 size_t BRCMS_NUM_RATES_CCK ;
 size_t BRCMS_NUM_RATES_MCS_1_STREAM ;
 size_t BRCMS_NUM_RATES_MCS_2_STREAM ;
 size_t BRCMS_NUM_RATES_OFDM ;
 int BRCMS_TXPWR_MAX ;
 scalar_t__ BRCM_BAND_2G ;
 scalar_t__ BRCM_BAND_5G ;
 int CHANNEL_POWER_IDX_5G (size_t) ;
 size_t CHSPEC_CHANNEL (int ) ;
 int QDB (int) ;
 scalar_t__ WARN_ON (int) ;
 struct locale_mimo_info* brcms_c_get_mimo_2g (int ) ;
 struct locale_mimo_info* brcms_c_get_mimo_5g (int ) ;
 size_t chspec_bandunit (int ) ;
 struct locale_mimo_info const locale_bn ;
 int max (int,int ) ;
 int memset (struct txpwr_limits*,int ,int) ;
 int min (int,int) ;

void
brcms_c_channel_reg_limits(struct brcms_cm_info *wlc_cm, u16 chanspec,
         struct txpwr_limits *txpwr)
{
 struct brcms_c_info *wlc = wlc_cm->wlc;
 struct ieee80211_channel *ch = wlc->pub->ieee_hw->conf.chandef.chan;
 uint i;
 uint chan;
 int maxpwr;
 int delta;
 const struct country_info *country;
 struct brcms_band *band;
 int conducted_max = BRCMS_TXPWR_MAX;
 const struct locale_mimo_info *li_mimo;
 int maxpwr20, maxpwr40;
 int maxpwr_idx;
 uint j;

 memset(txpwr, 0, sizeof(struct txpwr_limits));

 if (WARN_ON(!ch))
  return;

 country = &wlc_cm->world_regd->country;

 chan = CHSPEC_CHANNEL(chanspec);
 band = wlc->bandstate[chspec_bandunit(chanspec)];
 li_mimo = (band->bandtype == BRCM_BAND_5G) ?
     brcms_c_get_mimo_5g(country->locale_mimo_5G) :
     brcms_c_get_mimo_2g(country->locale_mimo_2G);

 delta = band->antgain;

 if (band->bandtype == BRCM_BAND_2G)
  conducted_max = QDB(22);

 maxpwr = QDB(ch->max_power) - delta;
 maxpwr = max(maxpwr, 0);
 maxpwr = min(maxpwr, conducted_max);


 if (band->bandtype == BRCM_BAND_2G) {
  for (i = 0; i < BRCMS_NUM_RATES_CCK; i++)
   txpwr->cck[i] = (u8) maxpwr;
 }

 for (i = 0; i < BRCMS_NUM_RATES_OFDM; i++) {
  txpwr->ofdm[i] = (u8) maxpwr;
  txpwr->ofdm_40_siso[i] = 0;

  txpwr->ofdm_cdd[i] = (u8) maxpwr;

  txpwr->ofdm_40_cdd[i] = 0;
 }

 delta = 0;
 if (band->antgain > QDB(6))
  delta = band->antgain - QDB(6);

 if (band->bandtype == BRCM_BAND_2G)
  maxpwr_idx = (chan - 1);
 else
  maxpwr_idx = CHANNEL_POWER_IDX_5G(chan);

 maxpwr20 = li_mimo->maxpwr20[maxpwr_idx];
 maxpwr40 = li_mimo->maxpwr40[maxpwr_idx];

 maxpwr20 = maxpwr20 - delta;
 maxpwr20 = max(maxpwr20, 0);
 maxpwr40 = maxpwr40 - delta;
 maxpwr40 = max(maxpwr40, 0);


 for (i = 0; i < BRCMS_NUM_RATES_MCS_1_STREAM; i++) {





  txpwr->mcs_20_siso[i] = txpwr->ofdm[i];
  txpwr->mcs_40_siso[i] = 0;
 }


 for (i = 0; i < BRCMS_NUM_RATES_MCS_1_STREAM; i++) {
  txpwr->mcs_20_cdd[i] = (u8) maxpwr20;
  txpwr->mcs_40_cdd[i] = (u8) maxpwr40;
 }





 if (li_mimo == &locale_bn) {
  if (li_mimo == &locale_bn) {
   maxpwr20 = QDB(16);
   maxpwr40 = 0;

   if (chan >= 3 && chan <= 11)
    maxpwr40 = QDB(16);
  }

  for (i = 0; i < BRCMS_NUM_RATES_MCS_1_STREAM; i++) {
   txpwr->mcs_20_siso[i] = (u8) maxpwr20;
   txpwr->mcs_40_siso[i] = (u8) maxpwr40;
  }
 }


 for (i = 0; i < BRCMS_NUM_RATES_MCS_1_STREAM; i++) {
  txpwr->mcs_20_stbc[i] = 0;
  txpwr->mcs_40_stbc[i] = 0;
 }


 for (i = 0; i < BRCMS_NUM_RATES_MCS_2_STREAM; i++) {
  txpwr->mcs_20_mimo[i] = (u8) maxpwr20;
  txpwr->mcs_40_mimo[i] = (u8) maxpwr40;
 }


 txpwr->mcs32 = (u8) maxpwr40;

 for (i = 0, j = 0; i < BRCMS_NUM_RATES_OFDM; i++, j++) {
  if (txpwr->ofdm_40_cdd[i] == 0)
   txpwr->ofdm_40_cdd[i] = txpwr->mcs_40_cdd[j];
  if (i == 0) {
   i = i + 1;
   if (txpwr->ofdm_40_cdd[i] == 0)
    txpwr->ofdm_40_cdd[i] = txpwr->mcs_40_cdd[j];
  }
 }





 for (i = 0; i < BRCMS_NUM_RATES_MCS_1_STREAM; i++) {
  if (txpwr->mcs_40_siso[i] == 0)
   txpwr->mcs_40_siso[i] = txpwr->mcs_40_cdd[i];
 }

 for (i = 0, j = 0; i < BRCMS_NUM_RATES_OFDM; i++, j++) {
  if (txpwr->ofdm_40_siso[i] == 0)
   txpwr->ofdm_40_siso[i] = txpwr->mcs_40_siso[j];
  if (i == 0) {
   i = i + 1;
   if (txpwr->ofdm_40_siso[i] == 0)
    txpwr->ofdm_40_siso[i] = txpwr->mcs_40_siso[j];
  }
 }





 for (i = 0; i < BRCMS_NUM_RATES_MCS_1_STREAM; i++) {
  if (txpwr->mcs_20_stbc[i] == 0)
   txpwr->mcs_20_stbc[i] = txpwr->mcs_20_cdd[i];

  if (txpwr->mcs_40_stbc[i] == 0)
   txpwr->mcs_40_stbc[i] = txpwr->mcs_40_cdd[i];
 }

 return;
}
