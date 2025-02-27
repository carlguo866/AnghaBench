
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_descs {int dummy; } ;
struct device {int dummy; } ;
typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct gpio_descs*) ;
 int PTR_ERR (struct gpio_descs*) ;
 int dev_err (struct device*,char*,char const*,int,...) ;
 struct gpio_descs* devm_gpiod_get_array_optional (struct device*,char const*,int) ;
 int gpiod_count (struct device*,char const*) ;

__attribute__((used)) static struct gpio_descs *devm_gpiod_get_array_optional_count(
    struct device *dev, const char *con_id,
    enum gpiod_flags flags, unsigned int expected)
{
 struct gpio_descs *descs;
 int found = gpiod_count(dev, con_id);

 if (found == -ENOENT)
  return ((void*)0);

 if (found != expected && found != 1) {
  dev_err(dev, "ignoring %s-gpios: found %d, expected %u or 1\n",
   con_id, found, expected);
  return ((void*)0);
 }

 descs = devm_gpiod_get_array_optional(dev, con_id, flags);

 if (IS_ERR(descs)) {
  dev_err(dev, "failed to get %s-gpios: %ld\n",
   con_id, PTR_ERR(descs));
  return ((void*)0);
 }

 return descs;
}
