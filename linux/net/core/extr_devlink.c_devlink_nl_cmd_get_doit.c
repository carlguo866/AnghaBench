
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; struct devlink** user_ptr; } ;
struct devlink {int dummy; } ;


 int DEVLINK_CMD_NEW ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int devlink_nl_fill (struct sk_buff*,struct devlink*,int ,int ,int ,int ) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int devlink_nl_cmd_get_doit(struct sk_buff *skb, struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 struct sk_buff *msg;
 int err;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 err = devlink_nl_fill(msg, devlink, DEVLINK_CMD_NEW,
         info->snd_portid, info->snd_seq, 0);
 if (err) {
  nlmsg_free(msg);
  return err;
 }

 return genlmsg_reply(msg, info);
}
