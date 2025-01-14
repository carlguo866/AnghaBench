
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_info_private_data {int file_private_data; struct snd_info_entry* entry; } ;
struct TYPE_3__ {TYPE_2__* ops; } ;
struct snd_info_entry {TYPE_1__ c; } ;
struct file {struct snd_info_private_data* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_4__ {int (* poll ) (struct snd_info_entry*,int ,struct file*,int *) ;scalar_t__ write; scalar_t__ read; } ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int stub1 (struct snd_info_entry*,int ,struct file*,int *) ;

__attribute__((used)) static __poll_t snd_info_entry_poll(struct file *file, poll_table *wait)
{
 struct snd_info_private_data *data = file->private_data;
 struct snd_info_entry *entry = data->entry;
 __poll_t mask = 0;

 if (entry->c.ops->poll)
  return entry->c.ops->poll(entry,
       data->file_private_data,
       file, wait);
 if (entry->c.ops->read)
  mask |= EPOLLIN | EPOLLRDNORM;
 if (entry->c.ops->write)
  mask |= EPOLLOUT | EPOLLWRNORM;
 return mask;
}
