
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uprobe_consumer {int dummy; } ;
struct inode {int dummy; } ;
typedef int loff_t ;


 int __uprobe_register (struct inode*,int ,int ,struct uprobe_consumer*) ;

int uprobe_register_refctr(struct inode *inode, loff_t offset,
      loff_t ref_ctr_offset, struct uprobe_consumer *uc)
{
 return __uprobe_register(inode, offset, ref_ctr_offset, uc);
}
