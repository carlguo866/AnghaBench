
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u16 ;
struct ocfs2_group_desc {void* bg_next_group; void* bg_blkno; } ;
struct TYPE_5__ {TYPE_1__* cl_recs; } ;
struct TYPE_6__ {TYPE_2__ i_chain; } ;
struct ocfs2_dinode {TYPE_3__ id2; void* i_blkno; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_4__ {void* c_blkno; } ;


 int BUG_ON (int) ;
 int INODE_CACHE (struct inode*) ;
 int OCFS2_IS_VALID_GROUP_DESC (struct ocfs2_group_desc*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 void* cpu_to_le64 (scalar_t__) ;
 scalar_t__ le64_to_cpu (void*) ;
 int mlog_errno (int) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_access_gd (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int trace_ocfs2_relink_block_group (unsigned long long,size_t,unsigned long long,unsigned long long) ;

__attribute__((used)) static int ocfs2_relink_block_group(handle_t *handle,
        struct inode *alloc_inode,
        struct buffer_head *fe_bh,
        struct buffer_head *bg_bh,
        struct buffer_head *prev_bg_bh,
        u16 chain)
{
 int status;


 u64 bg_ptr, prev_bg_ptr;
 struct ocfs2_dinode *fe = (struct ocfs2_dinode *) fe_bh->b_data;
 struct ocfs2_group_desc *bg = (struct ocfs2_group_desc *) bg_bh->b_data;
 struct ocfs2_group_desc *prev_bg = (struct ocfs2_group_desc *) prev_bg_bh->b_data;



 BUG_ON(!OCFS2_IS_VALID_GROUP_DESC(bg));
 BUG_ON(!OCFS2_IS_VALID_GROUP_DESC(prev_bg));

 trace_ocfs2_relink_block_group(
  (unsigned long long)le64_to_cpu(fe->i_blkno), chain,
  (unsigned long long)le64_to_cpu(bg->bg_blkno),
  (unsigned long long)le64_to_cpu(prev_bg->bg_blkno));

 bg_ptr = le64_to_cpu(bg->bg_next_group);
 prev_bg_ptr = le64_to_cpu(prev_bg->bg_next_group);

 status = ocfs2_journal_access_gd(handle, INODE_CACHE(alloc_inode),
      prev_bg_bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0)
  goto out;

 prev_bg->bg_next_group = bg->bg_next_group;
 ocfs2_journal_dirty(handle, prev_bg_bh);

 status = ocfs2_journal_access_gd(handle, INODE_CACHE(alloc_inode),
      bg_bh, OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0)
  goto out_rollback_prev_bg;

 bg->bg_next_group = fe->id2.i_chain.cl_recs[chain].c_blkno;
 ocfs2_journal_dirty(handle, bg_bh);

 status = ocfs2_journal_access_di(handle, INODE_CACHE(alloc_inode),
      fe_bh, OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0)
  goto out_rollback_bg;

 fe->id2.i_chain.cl_recs[chain].c_blkno = bg->bg_blkno;
 ocfs2_journal_dirty(handle, fe_bh);

out:
 if (status < 0)
  mlog_errno(status);
 return status;

out_rollback_bg:
 bg->bg_next_group = cpu_to_le64(bg_ptr);
out_rollback_prev_bg:
 prev_bg->bg_next_group = cpu_to_le64(prev_bg_ptr);
 goto out;
}
