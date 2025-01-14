
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct hv_device {int dummy; } ;
struct device {int dummy; } ;


 int VMBUS_ALIAS_LEN ;
 int add_uevent_var (struct kobj_uevent_env*,char*,char*) ;
 struct hv_device* device_to_hv_device (struct device*) ;
 int print_alias_name (struct hv_device*,char*) ;

__attribute__((used)) static int vmbus_uevent(struct device *device, struct kobj_uevent_env *env)
{
 struct hv_device *dev = device_to_hv_device(device);
 int ret;
 char alias_name[VMBUS_ALIAS_LEN + 1];

 print_alias_name(dev, alias_name);
 ret = add_uevent_var(env, "MODALIAS=vmbus:%s", alias_name);
 return ret;
}
