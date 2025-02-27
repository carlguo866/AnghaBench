
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {scalar_t__ local_alloc_state; struct buffer_head* local_alloc_bh; int osb_la_resmap; int slot_num; scalar_t__ ocfs2_wq; int la_enable_wq; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_size; scalar_t__ b_data; } ;
typedef int handle_t ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_NOFS ;
 int GLOBAL_BITMAP_SYSTEM_INODE ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int LOCAL_ALLOC_SYSTEM_INODE ;
 int OCFS2_INVALID_SLOT ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 scalar_t__ OCFS2_LA_DISABLED ;
 scalar_t__ OCFS2_LA_UNUSED ;
 int OCFS2_WINDOW_MOVE_CREDITS ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int cancel_delayed_work (int *) ;
 int flush_workqueue (scalar_t__) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 int kfree (struct ocfs2_dinode*) ;
 struct ocfs2_dinode* kmemdup (struct ocfs2_dinode*,int ,int ) ;
 int mlog_errno (int) ;
 int ocfs2_clear_local_alloc (struct ocfs2_dinode*) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_resmap_uninit (int *) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_sync_local_to_main (struct ocfs2_super*,int *,struct ocfs2_dinode*,struct inode*,struct buffer_head*) ;

void ocfs2_shutdown_local_alloc(struct ocfs2_super *osb)
{
 int status;
 handle_t *handle;
 struct inode *local_alloc_inode = ((void*)0);
 struct buffer_head *bh = ((void*)0);
 struct buffer_head *main_bm_bh = ((void*)0);
 struct inode *main_bm_inode = ((void*)0);
 struct ocfs2_dinode *alloc_copy = ((void*)0);
 struct ocfs2_dinode *alloc = ((void*)0);

 cancel_delayed_work(&osb->la_enable_wq);
 if (osb->ocfs2_wq)
  flush_workqueue(osb->ocfs2_wq);

 if (osb->local_alloc_state == OCFS2_LA_UNUSED)
  goto out;

 local_alloc_inode =
  ocfs2_get_system_file_inode(osb,
         LOCAL_ALLOC_SYSTEM_INODE,
         osb->slot_num);
 if (!local_alloc_inode) {
  status = -ENOENT;
  mlog_errno(status);
  goto out;
 }

 osb->local_alloc_state = OCFS2_LA_DISABLED;

 ocfs2_resmap_uninit(&osb->osb_la_resmap);

 main_bm_inode = ocfs2_get_system_file_inode(osb,
          GLOBAL_BITMAP_SYSTEM_INODE,
          OCFS2_INVALID_SLOT);
 if (!main_bm_inode) {
  status = -EINVAL;
  mlog_errno(status);
  goto out;
 }

 inode_lock(main_bm_inode);

 status = ocfs2_inode_lock(main_bm_inode, &main_bm_bh, 1);
 if (status < 0) {
  mlog_errno(status);
  goto out_mutex;
 }


 handle = ocfs2_start_trans(osb, OCFS2_WINDOW_MOVE_CREDITS);
 if (IS_ERR(handle)) {
  mlog_errno(PTR_ERR(handle));
  handle = ((void*)0);
  goto out_unlock;
 }

 bh = osb->local_alloc_bh;
 alloc = (struct ocfs2_dinode *) bh->b_data;

 alloc_copy = kmemdup(alloc, bh->b_size, GFP_NOFS);
 if (!alloc_copy) {
  status = -ENOMEM;
  goto out_commit;
 }

 status = ocfs2_journal_access_di(handle, INODE_CACHE(local_alloc_inode),
      bh, OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto out_commit;
 }

 ocfs2_clear_local_alloc(alloc);
 ocfs2_journal_dirty(handle, bh);

 brelse(bh);
 osb->local_alloc_bh = ((void*)0);
 osb->local_alloc_state = OCFS2_LA_UNUSED;

 status = ocfs2_sync_local_to_main(osb, handle, alloc_copy,
       main_bm_inode, main_bm_bh);
 if (status < 0)
  mlog_errno(status);

out_commit:
 ocfs2_commit_trans(osb, handle);

out_unlock:
 brelse(main_bm_bh);

 ocfs2_inode_unlock(main_bm_inode, 1);

out_mutex:
 inode_unlock(main_bm_inode);
 iput(main_bm_inode);

out:
 iput(local_alloc_inode);

 kfree(alloc_copy);
}
