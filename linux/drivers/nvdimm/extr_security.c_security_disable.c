
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvdimm_bus {int reconfig_mutex; } ;
struct TYPE_4__ {scalar_t__ flags; TYPE_1__* ops; } ;
struct device {int dummy; } ;
struct nvdimm {TYPE_2__ sec; struct device dev; } ;
struct key {int dummy; } ;
struct TYPE_3__ {int (* disable ) (struct nvdimm*,void const*) ;} ;


 int ENOKEY ;
 int EOPNOTSUPP ;
 int NVDIMM_BASE_KEY ;
 int NVDIMM_USER ;
 int check_security_state (struct nvdimm*) ;
 int dev_dbg (struct device*,char*,int ,char*) ;
 int key_serial (struct key*) ;
 int lockdep_assert_held (int *) ;
 void* nvdimm_get_user_key_payload (struct nvdimm*,unsigned int,int ,struct key**) ;
 int nvdimm_put_key (struct key*) ;
 scalar_t__ nvdimm_security_flags (struct nvdimm*,int ) ;
 int stub1 (struct nvdimm*,void const*) ;
 struct nvdimm_bus* walk_to_nvdimm_bus (struct device*) ;

__attribute__((used)) static int security_disable(struct nvdimm *nvdimm, unsigned int keyid)
{
 struct device *dev = &nvdimm->dev;
 struct nvdimm_bus *nvdimm_bus = walk_to_nvdimm_bus(dev);
 struct key *key;
 int rc;
 const void *data;


 lockdep_assert_held(&nvdimm_bus->reconfig_mutex);

 if (!nvdimm->sec.ops || !nvdimm->sec.ops->disable
   || !nvdimm->sec.flags)
  return -EOPNOTSUPP;

 rc = check_security_state(nvdimm);
 if (rc)
  return rc;

 data = nvdimm_get_user_key_payload(nvdimm, keyid,
   NVDIMM_BASE_KEY, &key);
 if (!data)
  return -ENOKEY;

 rc = nvdimm->sec.ops->disable(nvdimm, data);
 dev_dbg(dev, "key: %d disable: %s\n", key_serial(key),
   rc == 0 ? "success" : "fail");

 nvdimm_put_key(key);
 nvdimm->sec.flags = nvdimm_security_flags(nvdimm, NVDIMM_USER);
 return rc;
}
