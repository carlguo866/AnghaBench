
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int type; int bdaddr; } ;
struct mgmt_ev_user_passkey_request {TYPE_1__ addr; } ;
struct hci_dev {int name; } ;
typedef int ev ;
typedef int bdaddr_t ;


 int BT_DBG (char*,int ) ;
 int MGMT_EV_USER_PASSKEY_REQUEST ;
 int bacpy (int *,int *) ;
 int link_to_bdaddr (int ,int ) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_user_passkey_request*,int,int *) ;

int mgmt_user_passkey_request(struct hci_dev *hdev, bdaddr_t *bdaddr,
         u8 link_type, u8 addr_type)
{
 struct mgmt_ev_user_passkey_request ev;

 BT_DBG("%s", hdev->name);

 bacpy(&ev.addr.bdaddr, bdaddr);
 ev.addr.type = link_to_bdaddr(link_type, addr_type);

 return mgmt_event(MGMT_EV_USER_PASSKEY_REQUEST, hdev, &ev, sizeof(ev),
     ((void*)0));
}
