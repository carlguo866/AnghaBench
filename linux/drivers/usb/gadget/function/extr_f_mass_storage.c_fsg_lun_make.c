
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct fsg_opts {int lock; TYPE_2__* common; scalar_t__ refcnt; } ;
struct TYPE_3__ {int ci_name; } ;
struct config_group {TYPE_1__ cg_item; } ;
struct fsg_lun_opts {size_t lun_id; struct config_group group; scalar_t__ lun; } ;
struct fsg_lun_config {int removable; } ;
typedef int config ;
struct TYPE_4__ {scalar_t__* luns; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int ERANGE ;
 struct config_group* ERR_PTR (int) ;
 size_t FSG_MAX_LUNS ;
 int GFP_KERNEL ;
 size_t array_index_nospec (size_t,size_t) ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 int fsg_common_create_lun (TYPE_2__*,struct fsg_lun_config*,size_t,char const*,char const**) ;
 int fsg_lun_type ;
 int kfree (struct fsg_lun_opts*) ;
 int kstrtou8 (char*,int ,size_t*) ;
 struct fsg_lun_opts* kzalloc (int,int ) ;
 int memset (struct fsg_lun_config*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 char* strchr (char const*,char) ;
 struct fsg_opts* to_fsg_opts (TYPE_1__*) ;

__attribute__((used)) static struct config_group *fsg_lun_make(struct config_group *group,
      const char *name)
{
 struct fsg_lun_opts *opts;
 struct fsg_opts *fsg_opts;
 struct fsg_lun_config config;
 char *num_str;
 u8 num;
 int ret;

 num_str = strchr(name, '.');
 if (!num_str) {
  pr_err("Unable to locate . in LUN.NUMBER\n");
  return ERR_PTR(-EINVAL);
 }
 num_str++;

 ret = kstrtou8(num_str, 0, &num);
 if (ret)
  return ERR_PTR(ret);

 fsg_opts = to_fsg_opts(&group->cg_item);
 if (num >= FSG_MAX_LUNS)
  return ERR_PTR(-ERANGE);
 num = array_index_nospec(num, FSG_MAX_LUNS);

 mutex_lock(&fsg_opts->lock);
 if (fsg_opts->refcnt || fsg_opts->common->luns[num]) {
  ret = -EBUSY;
  goto out;
 }

 opts = kzalloc(sizeof(*opts), GFP_KERNEL);
 if (!opts) {
  ret = -ENOMEM;
  goto out;
 }

 memset(&config, 0, sizeof(config));
 config.removable = 1;

 ret = fsg_common_create_lun(fsg_opts->common, &config, num, name,
        (const char **)&group->cg_item.ci_name);
 if (ret) {
  kfree(opts);
  goto out;
 }
 opts->lun = fsg_opts->common->luns[num];
 opts->lun_id = num;
 mutex_unlock(&fsg_opts->lock);

 config_group_init_type_name(&opts->group, name, &fsg_lun_type);

 return &opts->group;
out:
 mutex_unlock(&fsg_opts->lock);
 return ERR_PTR(ret);
}
