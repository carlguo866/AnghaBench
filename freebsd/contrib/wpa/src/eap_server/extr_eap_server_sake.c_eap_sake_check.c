
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sake_hdr {scalar_t__ version; scalar_t__ session_id; scalar_t__ subtype; } ;
struct eap_sake_data {scalar_t__ session_id; scalar_t__ state; } ;
typedef int Boolean ;


 scalar_t__ CHALLENGE ;
 scalar_t__ CONFIRM ;
 scalar_t__ EAP_SAKE_SUBTYPE_AUTH_REJECT ;
 scalar_t__ EAP_SAKE_SUBTYPE_CHALLENGE ;
 scalar_t__ EAP_SAKE_SUBTYPE_CONFIRM ;
 scalar_t__ EAP_SAKE_SUBTYPE_IDENTITY ;
 scalar_t__ EAP_SAKE_VERSION ;
 int EAP_TYPE_SAKE ;
 int EAP_VENDOR_IETF ;
 int FALSE ;
 scalar_t__ IDENTITY ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int TRUE ;
 scalar_t__* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static Boolean eap_sake_check(struct eap_sm *sm, void *priv,
         struct wpabuf *respData)
{
 struct eap_sake_data *data = priv;
 struct eap_sake_hdr *resp;
 size_t len;
 u8 version, session_id, subtype;
 const u8 *pos;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_SAKE, respData, &len);
 if (pos == ((void*)0) || len < sizeof(struct eap_sake_hdr)) {
  wpa_printf(MSG_INFO, "EAP-SAKE: Invalid frame");
  return TRUE;
 }

 resp = (struct eap_sake_hdr *) pos;
 version = resp->version;
 session_id = resp->session_id;
 subtype = resp->subtype;

 if (version != EAP_SAKE_VERSION) {
  wpa_printf(MSG_INFO, "EAP-SAKE: Unknown version %d", version);
  return TRUE;
 }

 if (session_id != data->session_id) {
  wpa_printf(MSG_INFO, "EAP-SAKE: Session ID mismatch (%d,%d)",
      session_id, data->session_id);
  return TRUE;
 }

 wpa_printf(MSG_DEBUG, "EAP-SAKE: Received frame: subtype=%d", subtype);

 if (data->state == IDENTITY && subtype == EAP_SAKE_SUBTYPE_IDENTITY)
  return FALSE;

 if (data->state == CHALLENGE && subtype == EAP_SAKE_SUBTYPE_CHALLENGE)
  return FALSE;

 if (data->state == CONFIRM && subtype == EAP_SAKE_SUBTYPE_CONFIRM)
  return FALSE;

 if (subtype == EAP_SAKE_SUBTYPE_AUTH_REJECT)
  return FALSE;

 wpa_printf(MSG_INFO, "EAP-SAKE: Unexpected subtype=%d in state=%d",
     subtype, data->state);

 return TRUE;
}
