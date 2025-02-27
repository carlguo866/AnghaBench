
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {scalar_t__ cache_type; TYPE_1__* cache_ops; } ;
struct TYPE_2__ {int (* read ) (struct regmap*,unsigned int,unsigned int*) ;} ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOSYS ;
 scalar_t__ REGCACHE_NONE ;
 int regmap_volatile (struct regmap*,unsigned int) ;
 int stub1 (struct regmap*,unsigned int,unsigned int*) ;
 int trace_regmap_reg_read_cache (struct regmap*,unsigned int,unsigned int) ;

int regcache_read(struct regmap *map,
    unsigned int reg, unsigned int *value)
{
 int ret;

 if (map->cache_type == REGCACHE_NONE)
  return -ENOSYS;

 BUG_ON(!map->cache_ops);

 if (!regmap_volatile(map, reg)) {
  ret = map->cache_ops->read(map, reg, value);

  if (ret == 0)
   trace_regmap_reg_read_cache(map, reg, *value);

  return ret;
 }

 return -EINVAL;
}
