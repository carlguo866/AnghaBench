
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sys_t_policy_node {int do_len; } ;
struct mutex {int dummy; } ;
struct config_item {TYPE_2__* ci_group; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* cg_subsys; } ;
struct TYPE_3__ {struct mutex su_mutex; } ;


 int kstrtobool (char const*,int *) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 struct sys_t_policy_node* to_pdrv_policy_node (struct config_item*) ;

__attribute__((used)) static ssize_t
sys_t_policy_do_len_store(struct config_item *item, const char *page,
   size_t count)
{
 struct mutex *mutexp = &item->ci_group->cg_subsys->su_mutex;
 struct sys_t_policy_node *pn = to_pdrv_policy_node(item);
 int ret;

 mutex_lock(mutexp);
 ret = kstrtobool(page, &pn->do_len);
 mutex_unlock(mutexp);

 return ret ? ret : count;
}
