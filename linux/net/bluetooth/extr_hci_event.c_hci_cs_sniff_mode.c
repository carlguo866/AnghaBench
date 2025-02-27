
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct hci_cp_sniff_mode {int handle; } ;
struct hci_conn {int flags; } ;
typedef int __u8 ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_CONN_MODE_CHANGE_PEND ;
 int HCI_CONN_SCO_SETUP_PEND ;
 int HCI_OP_SNIFF_MODE ;
 int __le16_to_cpu (int ) ;
 int clear_bit (int ,int *) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_sco_setup (struct hci_conn*,int ) ;
 struct hci_cp_sniff_mode* hci_sent_cmd_data (struct hci_dev*,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void hci_cs_sniff_mode(struct hci_dev *hdev, __u8 status)
{
 struct hci_cp_sniff_mode *cp;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 if (!status)
  return;

 cp = hci_sent_cmd_data(hdev, HCI_OP_SNIFF_MODE);
 if (!cp)
  return;

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(cp->handle));
 if (conn) {
  clear_bit(HCI_CONN_MODE_CHANGE_PEND, &conn->flags);

  if (test_and_clear_bit(HCI_CONN_SCO_SETUP_PEND, &conn->flags))
   hci_sco_setup(conn, status);
 }

 hci_dev_unlock(hdev);
}
