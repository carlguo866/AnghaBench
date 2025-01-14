
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int snd_portid; int snd_seq; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int L2TP_CMD_NOOP ;
 int NLMSG_DEFAULT_SIZE ;
 int genl_info_net (struct genl_info*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int genlmsg_unicast (int ,struct sk_buff*,int ) ;
 int l2tp_nl_family ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int l2tp_nl_cmd_noop(struct sk_buff *skb, struct genl_info *info)
{
 struct sk_buff *msg;
 void *hdr;
 int ret = -ENOBUFS;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg) {
  ret = -ENOMEM;
  goto out;
 }

 hdr = genlmsg_put(msg, info->snd_portid, info->snd_seq,
     &l2tp_nl_family, 0, L2TP_CMD_NOOP);
 if (!hdr) {
  ret = -EMSGSIZE;
  goto err_out;
 }

 genlmsg_end(msg, hdr);

 return genlmsg_unicast(genl_info_net(info), msg, info->snd_portid);

err_out:
 nlmsg_free(msg);

out:
 return ret;
}
