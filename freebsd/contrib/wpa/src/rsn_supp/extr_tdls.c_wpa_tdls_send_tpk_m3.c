
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int timeoutie ;
struct wpa_tdls_timeoutie {int dummy; } ;
struct TYPE_2__ {int kck; } ;
struct wpa_tdls_peer {int initiator; scalar_t__ wmm_capable; scalar_t__ ht_capabilities; scalar_t__ vht_capabilities; int rsnie_p; TYPE_1__ tpk; int lifetime; int inonce; int rnonce; int rsnie_p_len; scalar_t__ rsnie_i_len; } ;
struct wpa_tdls_lnkid {int dummy; } ;
struct wpa_tdls_ftie {int ie_len; int* mic; int Snonce; int Anonce; int ie_type; } ;
struct wpa_sm {int dummy; } ;


 int MSG_DEBUG ;
 int TDLS_PEER_HT ;
 int TDLS_PEER_VHT ;
 int TDLS_PEER_WMM ;
 int TDLS_TESTING_LONG_FRAME ;
 int TDLS_TESTING_WRONG_LIFETIME_CONF ;
 int TDLS_TESTING_WRONG_MIC ;
 int WLAN_EID_FAST_BSS_TRANSITION ;
 int WLAN_TDLS_SETUP_CONFIRM ;
 int WPA_NONCE_LEN ;
 int os_free (int *) ;
 int os_memcpy (int ,int ,int ) ;
 int * os_zalloc (size_t) ;
 int tdls_testing ;
 int * wpa_add_ie (int *,int ,int ) ;
 int * wpa_add_tdls_timeoutie (int *,int *,int,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_tdls_ftie_mic (int ,int,int *,int ,int *,int *,int*) ;
 scalar_t__ wpa_tdls_get_privacy (struct wpa_sm*) ;
 int wpa_tdls_tpk_send (struct wpa_sm*,unsigned char const*,int ,int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static int wpa_tdls_send_tpk_m3(struct wpa_sm *sm,
    const unsigned char *src_addr, u8 dtoken,
    struct wpa_tdls_lnkid *lnkid,
    const struct wpa_tdls_peer *peer)
{
 u8 *rbuf, *pos;
 size_t buf_len;
 struct wpa_tdls_ftie *ftie;
 struct wpa_tdls_timeoutie timeoutie;
 u32 lifetime;
 int status;
 u32 peer_capab = 0;

 buf_len = 0;
 if (wpa_tdls_get_privacy(sm)) {


  buf_len += peer->rsnie_i_len + sizeof(struct wpa_tdls_ftie) +
   sizeof(struct wpa_tdls_timeoutie);




 }

 rbuf = os_zalloc(buf_len + 1);
 if (rbuf == ((void*)0))
  return -1;
 pos = rbuf;

 if (!wpa_tdls_get_privacy(sm))
  goto skip_ies;


 pos = wpa_add_ie(pos, peer->rsnie_p, peer->rsnie_p_len);

 ftie = (struct wpa_tdls_ftie *) pos;
 ftie->ie_type = WLAN_EID_FAST_BSS_TRANSITION;

 os_memcpy(ftie->Anonce, peer->rnonce, WPA_NONCE_LEN);
 os_memcpy(ftie->Snonce, peer->inonce, WPA_NONCE_LEN);
 ftie->ie_len = sizeof(struct wpa_tdls_ftie) - 2;

 pos = (u8 *) (ftie + 1);
 lifetime = peer->lifetime;







 pos = wpa_add_tdls_timeoutie(pos, (u8 *) &timeoutie,
         sizeof(timeoutie), lifetime);
 wpa_printf(MSG_DEBUG, "TDLS: TPK lifetime %u seconds",
     lifetime);


 wpa_tdls_ftie_mic(peer->tpk.kck, 3, (u8 *) lnkid, peer->rsnie_p,
     (u8 *) &timeoutie, (u8 *) ftie, ftie->mic);







skip_ies:

 if (peer->vht_capabilities)
  peer_capab |= TDLS_PEER_VHT;
 if (peer->ht_capabilities)
  peer_capab |= TDLS_PEER_HT;
 if (peer->wmm_capable)
  peer_capab |= TDLS_PEER_WMM;

 status = wpa_tdls_tpk_send(sm, src_addr, WLAN_TDLS_SETUP_CONFIRM,
       dtoken, 0, peer_capab, peer->initiator,
       rbuf, pos - rbuf);
 os_free(rbuf);

 return status;
}
