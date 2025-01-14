
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int (* getpgbwgcfgtx ) (struct net_device*,int,int *) ;int (* getpgbwgcfgrx ) (struct net_device*,int,int *) ;int (* getpgtccfgtx ) (struct net_device*,int,int *,int *,int *,int *) ;int (* getpgtccfgrx ) (struct net_device*,int,int *,int *,int *,int *) ;} ;


 size_t DCB_ATTR_PG_CFG ;
 int DCB_ATTR_VALUE_UNDEFINED ;
 int DCB_PG_ATTR_BW_ID_0 ;
 int DCB_PG_ATTR_BW_ID_7 ;
 size_t DCB_PG_ATTR_BW_ID_ALL ;
 int DCB_PG_ATTR_MAX ;
 int DCB_PG_ATTR_TC_0 ;
 int DCB_PG_ATTR_TC_7 ;
 size_t DCB_PG_ATTR_TC_ALL ;
 size_t DCB_TC_ATTR_PARAM_ALL ;
 size_t DCB_TC_ATTR_PARAM_BW_PCT ;
 int DCB_TC_ATTR_PARAM_MAX ;
 size_t DCB_TC_ATTR_PARAM_PGID ;
 size_t DCB_TC_ATTR_PARAM_STRICT_PRIO ;
 size_t DCB_TC_ATTR_PARAM_UP_MAPPING ;
 int EINVAL ;
 int EMSGSIZE ;
 int EOPNOTSUPP ;
 int dcbnl_pg_nest ;
 int dcbnl_tc_param_nest ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int nla_put_u8 (struct sk_buff*,int,int ) ;
 int stub1 (struct net_device*,int,int *,int *,int *,int *) ;
 int stub2 (struct net_device*,int,int *,int *,int *,int *) ;
 int stub3 (struct net_device*,int,int *) ;
 int stub4 (struct net_device*,int,int *) ;

__attribute__((used)) static int __dcbnl_pg_getcfg(struct net_device *netdev, struct nlmsghdr *nlh,
        struct nlattr **tb, struct sk_buff *skb, int dir)
{
 struct nlattr *pg_nest, *param_nest, *data;
 struct nlattr *pg_tb[DCB_PG_ATTR_MAX + 1];
 struct nlattr *param_tb[DCB_TC_ATTR_PARAM_MAX + 1];
 u8 prio, pgid, tc_pct, up_map;
 int ret;
 int getall = 0;
 int i;

 if (!tb[DCB_ATTR_PG_CFG])
  return -EINVAL;

 if (!netdev->dcbnl_ops->getpgtccfgtx ||
     !netdev->dcbnl_ops->getpgtccfgrx ||
     !netdev->dcbnl_ops->getpgbwgcfgtx ||
     !netdev->dcbnl_ops->getpgbwgcfgrx)
  return -EOPNOTSUPP;

 ret = nla_parse_nested_deprecated(pg_tb, DCB_PG_ATTR_MAX,
       tb[DCB_ATTR_PG_CFG], dcbnl_pg_nest,
       ((void*)0));
 if (ret)
  return ret;

 pg_nest = nla_nest_start_noflag(skb, DCB_ATTR_PG_CFG);
 if (!pg_nest)
  return -EMSGSIZE;

 if (pg_tb[DCB_PG_ATTR_TC_ALL])
  getall = 1;

 for (i = DCB_PG_ATTR_TC_0; i <= DCB_PG_ATTR_TC_7; i++) {
  if (!getall && !pg_tb[i])
   continue;

  if (pg_tb[DCB_PG_ATTR_TC_ALL])
   data = pg_tb[DCB_PG_ATTR_TC_ALL];
  else
   data = pg_tb[i];
  ret = nla_parse_nested_deprecated(param_tb,
        DCB_TC_ATTR_PARAM_MAX, data,
        dcbnl_tc_param_nest, ((void*)0));
  if (ret)
   goto err_pg;

  param_nest = nla_nest_start_noflag(skb, i);
  if (!param_nest)
   goto err_pg;

  pgid = DCB_ATTR_VALUE_UNDEFINED;
  prio = DCB_ATTR_VALUE_UNDEFINED;
  tc_pct = DCB_ATTR_VALUE_UNDEFINED;
  up_map = DCB_ATTR_VALUE_UNDEFINED;

  if (dir) {

   netdev->dcbnl_ops->getpgtccfgrx(netdev,
      i - DCB_PG_ATTR_TC_0, &prio,
      &pgid, &tc_pct, &up_map);
  } else {

   netdev->dcbnl_ops->getpgtccfgtx(netdev,
      i - DCB_PG_ATTR_TC_0, &prio,
      &pgid, &tc_pct, &up_map);
  }

  if (param_tb[DCB_TC_ATTR_PARAM_PGID] ||
      param_tb[DCB_TC_ATTR_PARAM_ALL]) {
   ret = nla_put_u8(skb,
                    DCB_TC_ATTR_PARAM_PGID, pgid);
   if (ret)
    goto err_param;
  }
  if (param_tb[DCB_TC_ATTR_PARAM_UP_MAPPING] ||
      param_tb[DCB_TC_ATTR_PARAM_ALL]) {
   ret = nla_put_u8(skb,
                    DCB_TC_ATTR_PARAM_UP_MAPPING, up_map);
   if (ret)
    goto err_param;
  }
  if (param_tb[DCB_TC_ATTR_PARAM_STRICT_PRIO] ||
      param_tb[DCB_TC_ATTR_PARAM_ALL]) {
   ret = nla_put_u8(skb,
                    DCB_TC_ATTR_PARAM_STRICT_PRIO, prio);
   if (ret)
    goto err_param;
  }
  if (param_tb[DCB_TC_ATTR_PARAM_BW_PCT] ||
      param_tb[DCB_TC_ATTR_PARAM_ALL]) {
   ret = nla_put_u8(skb, DCB_TC_ATTR_PARAM_BW_PCT,
                    tc_pct);
   if (ret)
    goto err_param;
  }
  nla_nest_end(skb, param_nest);
 }

 if (pg_tb[DCB_PG_ATTR_BW_ID_ALL])
  getall = 1;
 else
  getall = 0;

 for (i = DCB_PG_ATTR_BW_ID_0; i <= DCB_PG_ATTR_BW_ID_7; i++) {
  if (!getall && !pg_tb[i])
   continue;

  tc_pct = DCB_ATTR_VALUE_UNDEFINED;

  if (dir) {

   netdev->dcbnl_ops->getpgbwgcfgrx(netdev,
     i - DCB_PG_ATTR_BW_ID_0, &tc_pct);
  } else {

   netdev->dcbnl_ops->getpgbwgcfgtx(netdev,
     i - DCB_PG_ATTR_BW_ID_0, &tc_pct);
  }
  ret = nla_put_u8(skb, i, tc_pct);
  if (ret)
   goto err_pg;
 }

 nla_nest_end(skb, pg_nest);

 return 0;

err_param:
 nla_nest_cancel(skb, param_nest);
err_pg:
 nla_nest_cancel(skb, pg_nest);

 return -EMSGSIZE;
}
