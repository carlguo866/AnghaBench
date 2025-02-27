
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_7__ {int sid; int host_no; } ;
struct TYPE_6__ {int sid; int host_no; } ;
struct TYPE_5__ {int sid; int host_no; } ;
struct TYPE_8__ {TYPE_3__ unbind_session; TYPE_2__ c_session_ret; TYPE_1__ d_session; } ;
struct iscsi_uevent {int type; TYPE_4__ r; int transport_handle; } ;
struct iscsi_internal {int dummy; } ;
struct iscsi_cls_session {int sid; int transport; } ;
struct Scsi_Host {int host_no; } ;
typedef enum iscsi_uevent_e { ____Placeholder_iscsi_uevent_e } iscsi_uevent_e ;


 int EINVAL ;
 int ENOMEM ;
 int ESRCH ;
 int GFP_KERNEL ;
 int ISCSI_DBG_TRANS_SESSION (struct iscsi_cls_session*,char*,int,int) ;



 int ISCSI_NL_GRP_ISCSID ;
 int KERN_ERR ;
 struct iscsi_uevent* NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_SPACE (int) ;
 struct nlmsghdr* __nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int iscsi_cls_session_printk (int ,struct iscsi_cls_session*,char*,int) ;
 int iscsi_handle (int ) ;
 struct iscsi_internal* iscsi_if_transport_lookup (int ) ;
 int iscsi_multicast_skb (struct sk_buff*,int ,int ) ;
 struct Scsi_Host* iscsi_session_to_shost (struct iscsi_cls_session*) ;
 int kfree_skb (struct sk_buff*) ;

int iscsi_session_event(struct iscsi_cls_session *session,
   enum iscsi_uevent_e event)
{
 struct iscsi_internal *priv;
 struct Scsi_Host *shost;
 struct iscsi_uevent *ev;
 struct sk_buff *skb;
 struct nlmsghdr *nlh;
 int rc, len = NLMSG_SPACE(sizeof(*ev));

 priv = iscsi_if_transport_lookup(session->transport);
 if (!priv)
  return -EINVAL;
 shost = iscsi_session_to_shost(session);

 skb = alloc_skb(len, GFP_KERNEL);
 if (!skb) {
  iscsi_cls_session_printk(KERN_ERR, session,
      "Cannot notify userspace of session "
      "event %u\n", event);
  return -ENOMEM;
 }

 nlh = __nlmsg_put(skb, 0, 0, 0, (len - sizeof(*nlh)), 0);
 ev = NLMSG_DATA(nlh);
 ev->transport_handle = iscsi_handle(session->transport);

 ev->type = event;
 switch (event) {
 case 129:
  ev->r.d_session.host_no = shost->host_no;
  ev->r.d_session.sid = session->sid;
  break;
 case 130:
  ev->r.c_session_ret.host_no = shost->host_no;
  ev->r.c_session_ret.sid = session->sid;
  break;
 case 128:
  ev->r.unbind_session.host_no = shost->host_no;
  ev->r.unbind_session.sid = session->sid;
  break;
 default:
  iscsi_cls_session_printk(KERN_ERR, session, "Invalid event "
      "%u.\n", event);
  kfree_skb(skb);
  return -EINVAL;
 }





 rc = iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_KERNEL);
 if (rc == -ESRCH)
  iscsi_cls_session_printk(KERN_ERR, session,
      "Cannot notify userspace of session "
      "event %u. Check iscsi daemon\n",
      event);

 ISCSI_DBG_TRANS_SESSION(session, "Completed handling event %d rc %d\n",
    event, rc);
 return rc;
}
