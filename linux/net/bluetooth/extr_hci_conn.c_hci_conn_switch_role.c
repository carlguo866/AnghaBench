
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_cp_switch_role {scalar_t__ role; int bdaddr; } ;
struct hci_conn {scalar_t__ role; int hdev; int dst; int flags; } ;
typedef int cp ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,struct hci_conn*) ;
 int HCI_CONN_RSWITCH_PEND ;
 int HCI_OP_SWITCH_ROLE ;
 int bacpy (int *,int *) ;
 int hci_send_cmd (int ,int ,int,struct hci_cp_switch_role*) ;
 int test_and_set_bit (int ,int *) ;

int hci_conn_switch_role(struct hci_conn *conn, __u8 role)
{
 BT_DBG("hcon %p", conn);

 if (role == conn->role)
  return 1;

 if (!test_and_set_bit(HCI_CONN_RSWITCH_PEND, &conn->flags)) {
  struct hci_cp_switch_role cp;
  bacpy(&cp.bdaddr, &conn->dst);
  cp.role = role;
  hci_send_cmd(conn->hdev, HCI_OP_SWITCH_ROLE, sizeof(cp), &cp);
 }

 return 0;
}
