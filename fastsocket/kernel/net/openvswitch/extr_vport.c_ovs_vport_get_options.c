
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int (* get_options ) (struct vport const*,struct sk_buff*) ;} ;


 int EMSGSIZE ;
 int OVS_VPORT_ATTR_OPTIONS ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int stub1 (struct vport const*,struct sk_buff*) ;

int ovs_vport_get_options(const struct vport *vport, struct sk_buff *skb)
{
 struct nlattr *nla;
 int err;

 if (!vport->ops->get_options)
  return 0;

 nla = nla_nest_start(skb, OVS_VPORT_ATTR_OPTIONS);
 if (!nla)
  return -EMSGSIZE;

 err = vport->ops->get_options(vport, skb);
 if (err) {
  nla_nest_cancel(skb, nla);
  return err;
 }

 nla_nest_end(skb, nla);
 return 0;
}
