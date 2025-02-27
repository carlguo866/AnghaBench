
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long use_srq; } ;
struct srpt_port {int enabled; int mutex; TYPE_1__ port_attrib; struct srpt_device* sdev; } ;
struct srpt_device {int sdev_mutex; } ;
struct se_portal_group {int dummy; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct se_portal_group* attrib_to_tpg (struct config_item*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int srpt_set_enabled (struct srpt_port*,int) ;
 struct srpt_port* srpt_tpg_to_sport (struct se_portal_group*) ;
 int srpt_use_srq (struct srpt_device*,unsigned long) ;

__attribute__((used)) static ssize_t srpt_tpg_attrib_use_srq_store(struct config_item *item,
          const char *page, size_t count)
{
 struct se_portal_group *se_tpg = attrib_to_tpg(item);
 struct srpt_port *sport = srpt_tpg_to_sport(se_tpg);
 struct srpt_device *sdev = sport->sdev;
 unsigned long val;
 bool enabled;
 int ret;

 ret = kstrtoul(page, 0, &val);
 if (ret < 0)
  return ret;
 if (val != !!val)
  return -EINVAL;

 ret = mutex_lock_interruptible(&sdev->sdev_mutex);
 if (ret < 0)
  return ret;
 ret = mutex_lock_interruptible(&sport->mutex);
 if (ret < 0)
  goto unlock_sdev;
 enabled = sport->enabled;

 srpt_set_enabled(sport, 0);
 sport->port_attrib.use_srq = val;
 srpt_use_srq(sdev, sport->port_attrib.use_srq);
 srpt_set_enabled(sport, enabled);
 ret = count;
 mutex_unlock(&sport->mutex);
unlock_sdev:
 mutex_unlock(&sdev->sdev_mutex);

 return ret;
}
