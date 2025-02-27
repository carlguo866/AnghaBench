
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_dev_attrib {int emulate_write_cache; TYPE_2__* da_dev; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* transport; } ;
struct TYPE_3__ {scalar_t__ get_write_cache; } ;


 int EINVAL ;
 int pr_debug (char*,TYPE_2__*,int) ;
 int pr_err (char*) ;
 int strtobool (char const*,int*) ;
 struct se_dev_attrib* to_attrib (struct config_item*) ;

__attribute__((used)) static ssize_t emulate_write_cache_store(struct config_item *item,
  const char *page, size_t count)
{
 struct se_dev_attrib *da = to_attrib(item);
 bool flag;
 int ret;

 ret = strtobool(page, &flag);
 if (ret < 0)
  return ret;

 if (flag && da->da_dev->transport->get_write_cache) {
  pr_err("emulate_write_cache not supported for this device\n");
  return -EINVAL;
 }

 da->emulate_write_cache = flag;
 pr_debug("dev[%p]: SE Device WRITE_CACHE_EMULATION flag: %d\n",
   da->da_dev, flag);
 return count;
}
