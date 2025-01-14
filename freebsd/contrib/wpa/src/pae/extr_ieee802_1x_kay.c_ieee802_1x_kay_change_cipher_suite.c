
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee802_1x_mka_participant {int new_sak; } ;
struct ieee802_1x_kay {unsigned int macsec_csindex; int macsec_capable; int macsec_desired; } ;
typedef enum macsec_cap { ____Placeholder_macsec_cap } macsec_cap ;
struct TYPE_2__ {int capable; } ;


 unsigned int CS_TABLE_SIZE ;
 int FALSE ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int TRUE ;
 TYPE_1__* cipher_suite_tbl ;
 struct ieee802_1x_mka_participant* ieee802_1x_kay_get_principal_participant (struct ieee802_1x_kay*) ;
 scalar_t__ secy_get_capability (struct ieee802_1x_kay*,int*) ;
 int wpa_printf (int ,char*) ;

int
ieee802_1x_kay_change_cipher_suite(struct ieee802_1x_kay *kay,
       unsigned int cs_index)
{
 struct ieee802_1x_mka_participant *participant;
 enum macsec_cap secy_cap;

 if (!kay)
  return -1;

 if (cs_index >= CS_TABLE_SIZE) {
  wpa_printf(MSG_ERROR,
      "KaY: Configured cipher suite index is out of range");
  return -1;
 }
 if (kay->macsec_csindex == cs_index)
  return -2;

 if (cs_index == 0)
  kay->macsec_desired = FALSE;

 kay->macsec_csindex = cs_index;
 kay->macsec_capable = cipher_suite_tbl[kay->macsec_csindex].capable;

 if (secy_get_capability(kay, &secy_cap) < 0)
  return -3;

 if (kay->macsec_capable > secy_cap)
  kay->macsec_capable = secy_cap;

 participant = ieee802_1x_kay_get_principal_participant(kay);
 if (participant) {
  wpa_printf(MSG_INFO, "KaY: Cipher Suite changed");
  participant->new_sak = TRUE;
 }

 return 0;
}
