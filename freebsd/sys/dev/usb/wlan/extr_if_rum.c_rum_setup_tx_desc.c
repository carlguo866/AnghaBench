
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct wmeParams {int wmep_logcwmax; int wmep_logcwmin; int wmep_aifsn; } ;
struct rum_tx_desc {int plcp_signal; int plcp_service; int plcp_length_hi; int plcp_length_lo; int hdrlen; size_t xflags; int wme; int flags; int iv; scalar_t__ eiv; } ;
struct ieee80211com {int ic_flags; int ic_rt; } ;
struct rum_softc {struct wmeParams* wme_params; struct ieee80211com sc_ic; } ;
struct ieee80211_key {int wk_flags; struct ieee80211_cipher* wk_cipher; } ;
struct ieee80211_cipher {int (* ic_setiv ) (struct ieee80211_key*,size_t*) ;scalar_t__ ic_miclen; scalar_t__ ic_trailer; scalar_t__ ic_header; } ;


 scalar_t__ IEEE80211_CRC_LEN ;
 int IEEE80211_F_SHPREAMBLE ;
 int IEEE80211_KEY_SWCRYPT ;
 scalar_t__ IEEE80211_T_OFDM ;
 int RT2573_AIFSN (int ) ;
 int RT2573_LOGCWMAX (int ) ;
 int RT2573_LOGCWMIN (int ) ;
 int RT2573_PLCP_LENGEXT ;
 int RT2573_QID (size_t) ;
 int RT2573_TX_OFDM ;
 int RT2573_TX_VALID ;
 int howmany (int,int) ;
 int htole16 (int) ;
 int htole32 (int) ;
 scalar_t__ ieee80211_rate2phytype (int ,int) ;
 int rum_plcp_signal (int) ;
 int stub1 (struct ieee80211_key*,size_t*) ;

__attribute__((used)) static void
rum_setup_tx_desc(struct rum_softc *sc, struct rum_tx_desc *desc,
    struct ieee80211_key *k, uint32_t flags, uint8_t xflags, uint8_t qid,
    int hdrlen, int len, int rate)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct wmeParams *wmep = &sc->wme_params[qid];
 uint16_t plcp_length;
 int remainder;

 flags |= RT2573_TX_VALID;
 flags |= len << 16;

 if (k != ((void*)0) && !(k->wk_flags & IEEE80211_KEY_SWCRYPT)) {
  const struct ieee80211_cipher *cip = k->wk_cipher;

  len += cip->ic_header + cip->ic_trailer + cip->ic_miclen;

  desc->eiv = 0;
  cip->ic_setiv(k, (uint8_t *)&desc->iv);
 }


 desc->plcp_signal = rum_plcp_signal(rate);
 desc->plcp_service = 4;

 len += IEEE80211_CRC_LEN;
 if (ieee80211_rate2phytype(ic->ic_rt, rate) == IEEE80211_T_OFDM) {
  flags |= RT2573_TX_OFDM;

  plcp_length = len & 0xfff;
  desc->plcp_length_hi = plcp_length >> 6;
  desc->plcp_length_lo = plcp_length & 0x3f;
 } else {
  if (rate == 0)
   rate = 2;
  plcp_length = howmany(16 * len, rate);
  if (rate == 22) {
   remainder = (16 * len) % 22;
   if (remainder != 0 && remainder < 7)
    desc->plcp_service |= RT2573_PLCP_LENGEXT;
  }
  desc->plcp_length_hi = plcp_length >> 8;
  desc->plcp_length_lo = plcp_length & 0xff;

  if (rate != 2 && (ic->ic_flags & IEEE80211_F_SHPREAMBLE))
   desc->plcp_signal |= 0x08;
 }

 desc->flags = htole32(flags);
 desc->hdrlen = hdrlen;
 desc->xflags = xflags;

 desc->wme = htole16(RT2573_QID(qid) |
     RT2573_AIFSN(wmep->wmep_aifsn) |
     RT2573_LOGCWMIN(wmep->wmep_logcwmin) |
     RT2573_LOGCWMAX(wmep->wmep_logcwmax));
}
