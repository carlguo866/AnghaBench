
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct proc_dir_entry {int nlink; int * proc_iops; int * proc_fops; void* data; } ;


 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 struct proc_dir_entry* __proc_create (struct proc_dir_entry**,char const*,int,int) ;
 int proc_dir_inode_operations ;
 int proc_dir_operations ;
 struct proc_dir_entry* proc_register (struct proc_dir_entry*,struct proc_dir_entry*) ;

struct proc_dir_entry *proc_mkdir_data(const char *name, umode_t mode,
  struct proc_dir_entry *parent, void *data)
{
 struct proc_dir_entry *ent;

 if (mode == 0)
  mode = S_IRUGO | S_IXUGO;

 ent = __proc_create(&parent, name, S_IFDIR | mode, 2);
 if (ent) {
  ent->data = data;
  ent->proc_fops = &proc_dir_operations;
  ent->proc_iops = &proc_dir_inode_operations;
  parent->nlink++;
  ent = proc_register(parent, ent);
  if (!ent)
   parent->nlink--;
 }
 return ent;
}
