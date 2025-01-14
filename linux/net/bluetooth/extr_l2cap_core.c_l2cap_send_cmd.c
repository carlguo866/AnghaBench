
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int priority; } ;
struct l2cap_conn {int hchan; TYPE_1__* hcon; } ;
struct TYPE_4__ {int force_active; } ;
struct TYPE_3__ {scalar_t__ type; int hdev; } ;


 int ACL_START ;
 int ACL_START_NO_FLUSH ;
 int BT_DBG (char*,int ) ;
 int BT_POWER_FORCE_ACTIVE_ON ;
 int HCI_PRIO_MAX ;
 scalar_t__ LE_LINK ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 int hci_send_acl (int ,struct sk_buff*,int ) ;
 struct sk_buff* l2cap_build_cmd (struct l2cap_conn*,int ,int ,int ,void*) ;
 scalar_t__ lmp_no_flush_capable (int ) ;

__attribute__((used)) static void l2cap_send_cmd(struct l2cap_conn *conn, u8 ident, u8 code, u16 len,
      void *data)
{
 struct sk_buff *skb = l2cap_build_cmd(conn, code, ident, len, data);
 u8 flags;

 BT_DBG("code 0x%2.2x", code);

 if (!skb)
  return;



 if (lmp_no_flush_capable(conn->hcon->hdev) ||
     conn->hcon->type == LE_LINK)
  flags = ACL_START_NO_FLUSH;
 else
  flags = ACL_START;

 bt_cb(skb)->force_active = BT_POWER_FORCE_ACTIVE_ON;
 skb->priority = HCI_PRIO_MAX;

 hci_send_acl(conn->hchan, skb, flags);
}
