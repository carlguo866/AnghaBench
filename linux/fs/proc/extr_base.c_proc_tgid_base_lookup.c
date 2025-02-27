
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ ARRAY_SIZE (scalar_t__) ;
 struct dentry* proc_pident_lookup (struct inode*,struct dentry*,scalar_t__,scalar_t__) ;
 scalar_t__ tgid_base_stuff ;

__attribute__((used)) static struct dentry *proc_tgid_base_lookup(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
 return proc_pident_lookup(dir, dentry,
      tgid_base_stuff,
      tgid_base_stuff + ARRAY_SIZE(tgid_base_stuff));
}
