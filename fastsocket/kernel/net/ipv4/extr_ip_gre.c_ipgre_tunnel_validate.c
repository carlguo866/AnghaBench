
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
typedef int __be16 ;


 int EINVAL ;
 int GRE_ROUTING ;
 int GRE_VERSION ;
 size_t IFLA_GRE_IFLAGS ;
 size_t IFLA_GRE_OFLAGS ;
 int nla_get_be16 (struct nlattr*) ;

__attribute__((used)) static int ipgre_tunnel_validate(struct nlattr *tb[], struct nlattr *data[])
{
 __be16 flags;

 if (!data)
  return 0;

 flags = 0;
 if (data[IFLA_GRE_IFLAGS])
  flags |= nla_get_be16(data[IFLA_GRE_IFLAGS]);
 if (data[IFLA_GRE_OFLAGS])
  flags |= nla_get_be16(data[IFLA_GRE_OFLAGS]);
 if (flags & (GRE_VERSION|GRE_ROUTING))
  return -EINVAL;

 return 0;
}
