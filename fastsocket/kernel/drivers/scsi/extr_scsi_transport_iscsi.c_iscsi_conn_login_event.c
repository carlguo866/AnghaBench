
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_3__ {int state; int sid; int cid; } ;
struct TYPE_4__ {TYPE_1__ conn_login; } ;
struct iscsi_uevent {TYPE_2__ r; int type; int transport_handle; } ;
struct iscsi_internal {int dummy; } ;
struct iscsi_cls_conn {int cid; int transport; } ;
typedef enum iscsi_conn_state { ____Placeholder_iscsi_conn_state } iscsi_conn_state ;


 int GFP_ATOMIC ;
 int ISCSI_KEVENT_CONN_LOGIN_STATE ;
 int ISCSI_NL_GRP_ISCSID ;
 int KERN_ERR ;
 int KERN_INFO ;
 struct iscsi_uevent* NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_SPACE (int) ;
 struct nlmsghdr* __nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int iscsi_cls_conn_printk (int ,struct iscsi_cls_conn*,char*,int) ;
 int iscsi_conn_get_sid (struct iscsi_cls_conn*) ;
 int iscsi_handle (int ) ;
 struct iscsi_internal* iscsi_if_transport_lookup (int ) ;
 int iscsi_multicast_skb (struct sk_buff*,int ,int ) ;

void iscsi_conn_login_event(struct iscsi_cls_conn *conn,
       enum iscsi_conn_state state)
{
 struct nlmsghdr *nlh;
 struct sk_buff *skb;
 struct iscsi_uevent *ev;
 struct iscsi_internal *priv;
 int len = NLMSG_SPACE(sizeof(*ev));

 priv = iscsi_if_transport_lookup(conn->transport);
 if (!priv)
  return;

 skb = alloc_skb(len, GFP_ATOMIC);
 if (!skb) {
  iscsi_cls_conn_printk(KERN_ERR, conn, "gracefully ignored "
          "conn login (%d)\n", state);
  return;
 }

 nlh = __nlmsg_put(skb, 0, 0, 0, (len - sizeof(*nlh)), 0);
 ev = NLMSG_DATA(nlh);
 ev->transport_handle = iscsi_handle(conn->transport);
 ev->type = ISCSI_KEVENT_CONN_LOGIN_STATE;
 ev->r.conn_login.state = state;
 ev->r.conn_login.cid = conn->cid;
 ev->r.conn_login.sid = iscsi_conn_get_sid(conn);
 iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);

 iscsi_cls_conn_printk(KERN_INFO, conn, "detected conn login (%d)\n",
         state);
}
