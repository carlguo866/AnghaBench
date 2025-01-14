
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct se_hba {TYPE_2__* backend; scalar_t__ hba_id; int hba_node; int hba_flags; int hba_index; int hba_access_mutex; int device_lock; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* attach_hba ) (struct se_hba*,int ) ;int owner; } ;


 int EINVAL ;
 int ENOMEM ;
 struct se_hba* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int SCSI_INST_INDEX ;
 TYPE_2__* core_get_backend (char const*) ;
 int hba_id_counter ;
 int hba_list ;
 int hba_lock ;
 int kfree (struct se_hba*) ;
 struct se_hba* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int module_put (int ) ;
 int mutex_init (int *) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_err (char*) ;
 int scsi_get_new_index (int ) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct se_hba*,int ) ;

struct se_hba *
core_alloc_hba(const char *plugin_name, u32 plugin_dep_id, u32 hba_flags)
{
 struct se_hba *hba;
 int ret = 0;

 hba = kzalloc(sizeof(*hba), GFP_KERNEL);
 if (!hba) {
  pr_err("Unable to allocate struct se_hba\n");
  return ERR_PTR(-ENOMEM);
 }

 spin_lock_init(&hba->device_lock);
 mutex_init(&hba->hba_access_mutex);

 hba->hba_index = scsi_get_new_index(SCSI_INST_INDEX);
 hba->hba_flags |= hba_flags;

 hba->backend = core_get_backend(plugin_name);
 if (!hba->backend) {
  ret = -EINVAL;
  goto out_free_hba;
 }

 ret = hba->backend->ops->attach_hba(hba, plugin_dep_id);
 if (ret < 0)
  goto out_module_put;

 spin_lock(&hba_lock);
 hba->hba_id = hba_id_counter++;
 list_add_tail(&hba->hba_node, &hba_list);
 spin_unlock(&hba_lock);

 pr_debug("CORE_HBA[%d] - Attached HBA to Generic Target"
   " Core\n", hba->hba_id);

 return hba;

out_module_put:
 module_put(hba->backend->ops->owner);
 hba->backend = ((void*)0);
out_free_hba:
 kfree(hba);
 return ERR_PTR(ret);
}
