
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtnexthop {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EOPNOTSUPP ;
 int RTA_ENCAP_TYPE ;
 scalar_t__ lwtunnel_valid_encap_type (int ,struct netlink_ext_ack*) ;
 struct nlattr* nla_find (struct nlattr*,int,int ) ;
 int nla_get_u16 (struct nlattr*) ;
 int rtnh_attrlen (struct rtnexthop*) ;
 struct nlattr* rtnh_attrs (struct rtnexthop*) ;
 struct rtnexthop* rtnh_next (struct rtnexthop*,int*) ;
 scalar_t__ rtnh_ok (struct rtnexthop*,int) ;

int lwtunnel_valid_encap_type_attr(struct nlattr *attr, int remaining,
       struct netlink_ext_ack *extack)
{
 struct rtnexthop *rtnh = (struct rtnexthop *)attr;
 struct nlattr *nla_entype;
 struct nlattr *attrs;
 u16 encap_type;
 int attrlen;

 while (rtnh_ok(rtnh, remaining)) {
  attrlen = rtnh_attrlen(rtnh);
  if (attrlen > 0) {
   attrs = rtnh_attrs(rtnh);
   nla_entype = nla_find(attrs, attrlen, RTA_ENCAP_TYPE);

   if (nla_entype) {
    encap_type = nla_get_u16(nla_entype);

    if (lwtunnel_valid_encap_type(encap_type,
             extack) != 0)
     return -EOPNOTSUPP;
   }
  }
  rtnh = rtnh_next(rtnh, &remaining);
 }

 return 0;
}
