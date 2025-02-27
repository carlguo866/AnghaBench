
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; struct batadv_priv** user_ptr; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_CMD_GET_MESH ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int batadv_netlink_mesh_fill (struct sk_buff*,struct batadv_priv*,int ,int ,int ,int ) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int batadv_netlink_get_mesh(struct sk_buff *skb, struct genl_info *info)
{
 struct batadv_priv *bat_priv = info->user_ptr[0];
 struct sk_buff *msg;
 int ret;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 ret = batadv_netlink_mesh_fill(msg, bat_priv, BATADV_CMD_GET_MESH,
           info->snd_portid, info->snd_seq, 0);
 if (ret < 0) {
  nlmsg_free(msg);
  return ret;
 }

 ret = genlmsg_reply(msg, info);

 return ret;
}
