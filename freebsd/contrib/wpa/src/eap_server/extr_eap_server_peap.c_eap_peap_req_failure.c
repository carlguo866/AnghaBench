
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_peap_data {scalar_t__ state; scalar_t__ tlv_request; scalar_t__ peap_version; } ;


 scalar_t__ FAILURE ;
 scalar_t__ FAILURE_REQ ;
 scalar_t__ PHASE2_TLV ;
 scalar_t__ SUCCESS_REQ ;
 scalar_t__ TLV_REQ_FAILURE ;
 scalar_t__ TLV_REQ_NONE ;
 int eap_peap_state (struct eap_peap_data*,scalar_t__) ;

__attribute__((used)) static void eap_peap_req_failure(struct eap_sm *sm,
     struct eap_peap_data *data)
{
 if (data->state == FAILURE || data->state == FAILURE_REQ ||
     data->state == SUCCESS_REQ || data->tlv_request != TLV_REQ_NONE) {
  eap_peap_state(data, FAILURE);
  return;
 }

 if (data->peap_version == 0) {
  data->tlv_request = TLV_REQ_FAILURE;
  eap_peap_state(data, PHASE2_TLV);
 } else {
  eap_peap_state(data, FAILURE_REQ);
 }
}
