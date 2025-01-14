
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int lock_arg; int (* unlock ) (int ) ;int (* lock ) (int ) ;int reg_stride; } ;


 int EINVAL ;
 int IS_ALIGNED (unsigned int,int ) ;
 int _regmap_read (struct regmap*,unsigned int,unsigned int*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val)
{
 int ret;

 if (!IS_ALIGNED(reg, map->reg_stride))
  return -EINVAL;

 map->lock(map->lock_arg);

 ret = _regmap_read(map, reg, val);

 map->unlock(map->lock_arg);

 return ret;
}
