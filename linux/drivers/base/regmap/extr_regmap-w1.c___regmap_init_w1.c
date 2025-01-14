
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int dummy; } ;
struct regmap_bus {int dummy; } ;
struct regmap {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct device {int dummy; } ;


 struct regmap* ERR_CAST (struct regmap_bus const*) ;
 scalar_t__ IS_ERR (struct regmap_bus const*) ;
 struct regmap* __regmap_init (struct device*,struct regmap_bus const*,struct device*,struct regmap_config const*,struct lock_class_key*,char const*) ;
 struct regmap_bus* regmap_get_w1_bus (struct device*,struct regmap_config const*) ;

struct regmap *__regmap_init_w1(struct device *w1_dev,
     const struct regmap_config *config,
     struct lock_class_key *lock_key,
     const char *lock_name)
{

 const struct regmap_bus *bus = regmap_get_w1_bus(w1_dev, config);

 if (IS_ERR(bus))
  return ERR_CAST(bus);

 return __regmap_init(w1_dev, bus, w1_dev, config,
    lock_key, lock_name);

 return ((void*)0);
}
