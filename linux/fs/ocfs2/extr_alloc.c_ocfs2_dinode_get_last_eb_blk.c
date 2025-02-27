
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_extent_tree {int * et_ops; struct ocfs2_dinode* et_object; } ;
struct ocfs2_dinode {int i_last_eb_blk; } ;


 int BUG_ON (int) ;
 int le64_to_cpu (int ) ;
 int ocfs2_dinode_et_ops ;

__attribute__((used)) static u64 ocfs2_dinode_get_last_eb_blk(struct ocfs2_extent_tree *et)
{
 struct ocfs2_dinode *di = et->et_object;

 BUG_ON(et->et_ops != &ocfs2_dinode_et_ops);
 return le64_to_cpu(di->i_last_eb_blk);
}
