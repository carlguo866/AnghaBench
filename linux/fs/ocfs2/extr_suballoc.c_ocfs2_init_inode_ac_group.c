
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_dinode {int i_suballoc_bit; scalar_t__ i_blkno; scalar_t__ i_suballoc_loc; int i_suballoc_slot; } ;
struct ocfs2_alloc_context {scalar_t__ ac_alloc_slot; scalar_t__ ac_last_group; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {scalar_t__ ip_last_used_slot; scalar_t__ ip_last_used_group; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (scalar_t__) ;
 scalar_t__ ocfs2_which_suballoc_group (scalar_t__,scalar_t__) ;

__attribute__((used)) static void ocfs2_init_inode_ac_group(struct inode *dir,
          struct buffer_head *parent_di_bh,
          struct ocfs2_alloc_context *ac)
{
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)parent_di_bh->b_data;
 if (OCFS2_I(dir)->ip_last_used_group &&
     OCFS2_I(dir)->ip_last_used_slot == ac->ac_alloc_slot)
  ac->ac_last_group = OCFS2_I(dir)->ip_last_used_group;
 else if (le16_to_cpu(di->i_suballoc_slot) == ac->ac_alloc_slot) {
  if (di->i_suballoc_loc)
   ac->ac_last_group = le64_to_cpu(di->i_suballoc_loc);
  else
   ac->ac_last_group = ocfs2_which_suballoc_group(
     le64_to_cpu(di->i_blkno),
     le16_to_cpu(di->i_suballoc_bit));
 }
}
