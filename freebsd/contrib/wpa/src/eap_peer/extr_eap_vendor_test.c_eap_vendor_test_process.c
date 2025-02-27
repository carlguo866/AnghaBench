
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_vendor_test_data {scalar_t__ state; scalar_t__ first_try; scalar_t__ test_pending_req; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int decision; int methodState; void* allowNotifications; void* ignore; } ;


 scalar_t__ CONFIRM ;
 int DECISION_FAIL ;
 int DECISION_UNCOND_SUCC ;
 int EAP_CODE_RESPONSE ;
 int EAP_VENDOR_ID ;
 int EAP_VENDOR_TYPE ;
 void* FALSE ;
 scalar_t__ INIT ;
 int METHOD_CONT ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 scalar_t__ SUCCESS ;
 void* TRUE ;
 int eap_get_id (struct wpabuf const*) ;
 int* eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int ) ;
 int eap_vendor_ready ;
 int eloop_register_timeout (int,int ,int ,struct eap_sm*,int *) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_vendor_test_process(struct eap_sm *sm, void *priv,
            struct eap_method_ret *ret,
            const struct wpabuf *reqData)
{
 struct eap_vendor_test_data *data = priv;
 struct wpabuf *resp;
 const u8 *pos;
 size_t len;

 pos = eap_hdr_validate(EAP_VENDOR_ID, EAP_VENDOR_TYPE, reqData, &len);
 if (pos == ((void*)0) || len < 1) {
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (data->state == INIT && *pos != 1) {
  wpa_printf(MSG_DEBUG, "EAP-VENDOR-TEST: Unexpected message "
      "%d in INIT state", *pos);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (data->state == CONFIRM && *pos != 3) {
  wpa_printf(MSG_DEBUG, "EAP-VENDOR-TEST: Unexpected message "
      "%d in CONFIRM state", *pos);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (data->state == SUCCESS) {
  wpa_printf(MSG_DEBUG, "EAP-VENDOR-TEST: Unexpected message "
      "in SUCCESS state");
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (data->state == CONFIRM) {
  if (data->test_pending_req && data->first_try) {
   data->first_try = 0;
   wpa_printf(MSG_DEBUG, "EAP-VENDOR-TEST: Testing "
       "pending request");
   ret->ignore = TRUE;
   eloop_register_timeout(1, 0, eap_vendor_ready, sm,
            ((void*)0));
   return ((void*)0);
  }
 }

 ret->ignore = FALSE;

 wpa_printf(MSG_DEBUG, "EAP-VENDOR-TEST: Generating Response");
 ret->allowNotifications = TRUE;

 resp = eap_msg_alloc(EAP_VENDOR_ID, EAP_VENDOR_TYPE, 1,
        EAP_CODE_RESPONSE, eap_get_id(reqData));
 if (resp == ((void*)0))
  return ((void*)0);

 if (data->state == INIT) {
  wpabuf_put_u8(resp, 2);
  data->state = CONFIRM;
  ret->methodState = METHOD_CONT;
  ret->decision = DECISION_FAIL;
 } else {
  wpabuf_put_u8(resp, 4);
  data->state = SUCCESS;
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_UNCOND_SUCC;
 }

 return resp;
}
