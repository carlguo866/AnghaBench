
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sysfs_open_dirent {int event; int poll; } ;
struct TYPE_6__ {struct sysfs_open_dirent* open; } ;
struct sysfs_dirent {TYPE_3__ s_attr; } ;
struct sysfs_buffer {scalar_t__ event; int needs_read_fill; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; struct sysfs_buffer* private_data; } ;
typedef int poll_table ;
struct TYPE_4__ {struct sysfs_dirent* d_fsdata; } ;


 unsigned int DEFAULT_POLLMASK ;
 unsigned int POLLERR ;
 unsigned int POLLPRI ;
 scalar_t__ atomic_read (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int sysfs_get_active_two (struct sysfs_dirent*) ;
 int sysfs_put_active_two (struct sysfs_dirent*) ;

__attribute__((used)) static unsigned int sysfs_poll(struct file *filp, poll_table *wait)
{
 struct sysfs_buffer * buffer = filp->private_data;
 struct sysfs_dirent *attr_sd = filp->f_path.dentry->d_fsdata;
 struct sysfs_open_dirent *od = attr_sd->s_attr.open;


 if (!sysfs_get_active_two(attr_sd))
  goto trigger;

 poll_wait(filp, &od->poll, wait);

 sysfs_put_active_two(attr_sd);

 if (buffer->event != atomic_read(&od->event))
  goto trigger;

 return DEFAULT_POLLMASK;

 trigger:
 buffer->needs_read_fill = 1;
 return DEFAULT_POLLMASK|POLLERR|POLLPRI;
}
