
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct hpfs_dirent {scalar_t__ down; } ;
struct dnode {scalar_t__ root_dnode; int up; int self; } ;
typedef scalar_t__ dnode_secno ;


 int cpu_to_le32 (scalar_t__) ;
 int de_down_pointer (struct hpfs_dirent*) ;
 struct hpfs_dirent* de_next_de (struct hpfs_dirent*) ;
 struct hpfs_dirent* dnode_end_de (struct dnode*) ;
 struct hpfs_dirent* dnode_first_de (struct dnode*) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 struct dnode* hpfs_map_dnode (struct super_block*,int ,struct quad_buffer_head*) ;
 int hpfs_mark_4buffers_dirty (struct quad_buffer_head*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void fix_up_ptrs(struct super_block *s, struct dnode *d)
{
 struct hpfs_dirent *de;
 struct hpfs_dirent *de_end = dnode_end_de(d);
 dnode_secno dno = le32_to_cpu(d->self);
 for (de = dnode_first_de(d); de < de_end; de = de_next_de(de))
  if (de->down) {
   struct quad_buffer_head qbh;
   struct dnode *dd;
   if ((dd = hpfs_map_dnode(s, de_down_pointer(de), &qbh))) {
    if (le32_to_cpu(dd->up) != dno || dd->root_dnode) {
     dd->up = cpu_to_le32(dno);
     dd->root_dnode = 0;
     hpfs_mark_4buffers_dirty(&qbh);
    }
    hpfs_brelse4(&qbh);
   }
  }
}
