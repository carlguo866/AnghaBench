
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_consumer_data {scalar_t__ max_uA; scalar_t__ min_uA; int enabled; int regulator; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_set_current_limit (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void update_current_limit_constraints(struct device *dev,
       struct virtual_consumer_data *data)
{
 int ret;

 if (data->max_uA
     && data->min_uA <= data->max_uA) {
  dev_dbg(dev, "Requesting %d-%duA\n",
   data->min_uA, data->max_uA);
  ret = regulator_set_current_limit(data->regulator,
     data->min_uA, data->max_uA);
  if (ret != 0) {
   dev_err(dev,
    "regulator_set_current_limit() failed: %d\n",
    ret);
   return;
  }
 }

 if (data->max_uA && !data->enabled) {
  dev_dbg(dev, "Enabling regulator\n");
  ret = regulator_enable(data->regulator);
  if (ret == 0)
   data->enabled = 1;
  else
   dev_err(dev, "regulator_enable() failed: %d\n",
    ret);
 }

 if (!(data->min_uA && data->max_uA) && data->enabled) {
  dev_dbg(dev, "Disabling regulator\n");
  ret = regulator_disable(data->regulator);
  if (ret == 0)
   data->enabled = 0;
  else
   dev_err(dev, "regulator_disable() failed: %d\n",
    ret);
 }
}
