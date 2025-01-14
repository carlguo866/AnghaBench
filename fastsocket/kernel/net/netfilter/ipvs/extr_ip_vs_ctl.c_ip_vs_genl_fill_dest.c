
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_vs_dest {int u_threshold; int l_threshold; int stats; int persistconns; int inactconns; int activeconns; int weight; int conn_flags; int port; int addr; } ;


 int EMSGSIZE ;
 int IPVS_CMD_ATTR_DEST ;
 int IPVS_DEST_ATTR_ACTIVE_CONNS ;
 int IPVS_DEST_ATTR_ADDR ;
 int IPVS_DEST_ATTR_FWD_METHOD ;
 int IPVS_DEST_ATTR_INACT_CONNS ;
 int IPVS_DEST_ATTR_L_THRESH ;
 int IPVS_DEST_ATTR_PERSIST_CONNS ;
 int IPVS_DEST_ATTR_PORT ;
 int IPVS_DEST_ATTR_STATS ;
 int IPVS_DEST_ATTR_U_THRESH ;
 int IPVS_DEST_ATTR_WEIGHT ;
 int IP_VS_CONN_F_FWD_MASK ;
 int NLA_PUT (struct sk_buff*,int ,int,int *) ;
 int NLA_PUT_U16 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int) ;
 int atomic_read (int *) ;
 scalar_t__ ip_vs_genl_fill_stats (struct sk_buff*,int ,int *) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;

__attribute__((used)) static int ip_vs_genl_fill_dest(struct sk_buff *skb, struct ip_vs_dest *dest)
{
 struct nlattr *nl_dest;

 nl_dest = nla_nest_start(skb, IPVS_CMD_ATTR_DEST);
 if (!nl_dest)
  return -EMSGSIZE;

 NLA_PUT(skb, IPVS_DEST_ATTR_ADDR, sizeof(dest->addr), &dest->addr);
 NLA_PUT_U16(skb, IPVS_DEST_ATTR_PORT, dest->port);

 NLA_PUT_U32(skb, IPVS_DEST_ATTR_FWD_METHOD,
      atomic_read(&dest->conn_flags) & IP_VS_CONN_F_FWD_MASK);
 NLA_PUT_U32(skb, IPVS_DEST_ATTR_WEIGHT, atomic_read(&dest->weight));
 NLA_PUT_U32(skb, IPVS_DEST_ATTR_U_THRESH, dest->u_threshold);
 NLA_PUT_U32(skb, IPVS_DEST_ATTR_L_THRESH, dest->l_threshold);
 NLA_PUT_U32(skb, IPVS_DEST_ATTR_ACTIVE_CONNS,
      atomic_read(&dest->activeconns));
 NLA_PUT_U32(skb, IPVS_DEST_ATTR_INACT_CONNS,
      atomic_read(&dest->inactconns));
 NLA_PUT_U32(skb, IPVS_DEST_ATTR_PERSIST_CONNS,
      atomic_read(&dest->persistconns));

 if (ip_vs_genl_fill_stats(skb, IPVS_DEST_ATTR_STATS, &dest->stats))
  goto nla_put_failure;

 nla_nest_end(skb, nl_dest);

 return 0;

nla_put_failure:
 nla_nest_cancel(skb, nl_dest);
 return -EMSGSIZE;
}
