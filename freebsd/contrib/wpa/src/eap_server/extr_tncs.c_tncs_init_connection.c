
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tncs_data {TYPE_1__* imv_data; int connectionID; struct tnc_if_imv* imv; } ;
struct tnc_if_imv {struct tnc_if_imv* next; } ;
struct TYPE_2__ {scalar_t__ imv_send_len; int * imv_send; } ;


 int TNC_CONNECTION_STATE_CREATE ;
 int TNC_CONNECTION_STATE_HANDSHAKE ;
 int TNC_MAX_IMV_ID ;
 int os_free (int *) ;
 int tncs_imv_notify_connection_change (struct tnc_if_imv*,int ,int ) ;

void tncs_init_connection(struct tncs_data *tncs)
{
 struct tnc_if_imv *imv;
 int i;

 for (imv = tncs->imv; imv; imv = imv->next) {
  tncs_imv_notify_connection_change(
   imv, tncs->connectionID, TNC_CONNECTION_STATE_CREATE);
  tncs_imv_notify_connection_change(
   imv, tncs->connectionID,
   TNC_CONNECTION_STATE_HANDSHAKE);
 }

 for (i = 0; i < TNC_MAX_IMV_ID; i++) {
  os_free(tncs->imv_data[i].imv_send);
  tncs->imv_data[i].imv_send = ((void*)0);
  tncs->imv_data[i].imv_send_len = 0;
 }
}
