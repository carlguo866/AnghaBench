
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct nlattr {int dummy; } ;
struct devlink_sb {int dummy; } ;


 size_t DEVLINK_ATTR_SB_POOL_INDEX ;
 int EINVAL ;
 scalar_t__ devlink_sb_pool_count (struct devlink_sb*) ;
 scalar_t__ nla_get_u16 (struct nlattr*) ;

__attribute__((used)) static int devlink_sb_pool_index_get_from_attrs(struct devlink_sb *devlink_sb,
      struct nlattr **attrs,
      u16 *p_pool_index)
{
 u16 val;

 if (!attrs[DEVLINK_ATTR_SB_POOL_INDEX])
  return -EINVAL;

 val = nla_get_u16(attrs[DEVLINK_ATTR_SB_POOL_INDEX]);
 if (val >= devlink_sb_pool_count(devlink_sb))
  return -EINVAL;
 *p_pool_index = val;
 return 0;
}
