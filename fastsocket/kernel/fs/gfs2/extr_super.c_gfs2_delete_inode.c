
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct timespec {int tv_nsec; int tv_sec; } ;
struct super_block {int s_flags; struct gfs2_sbd* s_fs_info; } ;
struct inode {int i_data; int i_atime; int i_mode; struct super_block* i_sb; } ;
struct gfs2_sbd {TYPE_1__* sd_jdesc; } ;
struct gfs2_holder {int gh_flags; int gh_iflags; } ;
struct gfs2_inode {int i_diskflags; struct gfs2_holder i_iopen_gh; int i_res; TYPE_2__* i_gl; scalar_t__ i_eattr; int i_flags; int i_no_addr; } ;
struct gfs2_dinode {int di_atime_nsec; int di_atime; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct address_space {int dummy; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int gl_flags; } ;
struct TYPE_8__ {int jd_blocks; } ;


 int EROFS ;
 int GFS2_BLKST_UNLINKED ;
 int GFS2_DIF_EXHASH ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int GIF_ALLOC_FAILED ;
 int GIF_INVALID ;
 int GLF_DIRTY ;
 int GLR_TRYFAILED ;
 int GL_NOCACHE ;
 int GL_SKIP ;
 int HIF_HOLDER ;
 int LM_FLAG_TRY_1CB ;
 int LM_ST_EXCLUSIVE ;
 int MS_RDONLY ;
 int PF_MEMALLOC ;
 int RES_DINODE ;
 scalar_t__ S_ISDIR (int ) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int clear_inode (struct inode*) ;
 TYPE_7__* current ;
 int filemap_fdatawait (struct address_space*) ;
 int filemap_fdatawrite (struct address_space*) ;
 int fs_warn (struct gfs2_sbd*,char*,int) ;
 int gfs2_ail_flush (TYPE_2__*,int ) ;
 int gfs2_check_blk_type (struct gfs2_sbd*,int ,int ) ;
 int gfs2_dinode_dealloc (struct gfs2_inode*) ;
 int gfs2_dinode_out (struct gfs2_inode*,scalar_t__) ;
 int gfs2_dir_exhash_dealloc (struct gfs2_inode*) ;
 int gfs2_ea_dealloc (struct gfs2_inode*) ;
 int gfs2_file_dealloc (struct gfs2_inode*) ;
 struct address_space* gfs2_glock2aspace (TYPE_2__*) ;
 int gfs2_glock_dq (struct gfs2_holder*) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_dq_wait (struct gfs2_holder*) ;
 int gfs2_glock_nq (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (TYPE_2__*,int ,int ,struct gfs2_holder*) ;
 int gfs2_holder_reinit (int ,int,struct gfs2_holder*) ;
 int gfs2_holder_uninit (struct gfs2_holder*) ;
 int gfs2_inode_refresh (struct gfs2_inode*) ;
 int gfs2_is_stuffed (struct gfs2_inode*) ;
 int gfs2_log_flush (struct gfs2_sbd*,TYPE_2__*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_ordered_del_inode (struct gfs2_inode*) ;
 scalar_t__ gfs2_rs_active (int ) ;
 int gfs2_rs_delete (struct gfs2_inode*) ;
 int gfs2_rs_deltree (int ) ;
 int gfs2_trans_add_meta (TYPE_2__*,struct buffer_head*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,int ,int ) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ timespec_compare (int *,struct timespec*) ;
 int truncate_inode_pages (int *,int ) ;
 scalar_t__ unlikely (int) ;
 int write_inode_now (struct inode*,int) ;

__attribute__((used)) static void gfs2_delete_inode(struct inode *inode)
{
 struct super_block *sb = inode->i_sb;
 struct gfs2_sbd *sdp = sb->s_fs_info;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder gh;
 int error;

 if (sb->s_flags & MS_RDONLY)
  goto out;


 error = gfs2_glock_nq_init(ip->i_gl, LM_ST_EXCLUSIVE, GL_SKIP, &gh);
 if (unlikely(error)) {
  ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
  gfs2_glock_dq_uninit(&ip->i_iopen_gh);
  goto out;
 }

 if (!test_bit(GIF_ALLOC_FAILED, &ip->i_flags)) {
  error = gfs2_check_blk_type(sdp, ip->i_no_addr, GFS2_BLKST_UNLINKED);
  if (error)
   goto out_truncate;
 }

 if (test_bit(GIF_INVALID, &ip->i_flags)) {
  error = gfs2_inode_refresh(ip);
  if (error)
   goto out_truncate;
 }

 ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
 gfs2_glock_dq_wait(&ip->i_iopen_gh);
 gfs2_holder_reinit(LM_ST_EXCLUSIVE, LM_FLAG_TRY_1CB | GL_NOCACHE, &ip->i_iopen_gh);
 error = gfs2_glock_nq(&ip->i_iopen_gh);
 if (error)
  goto out_truncate;



 if (S_ISDIR(inode->i_mode) &&
     (ip->i_diskflags & GFS2_DIF_EXHASH)) {
  error = gfs2_dir_exhash_dealloc(ip);
  if (error)
   goto out_unlock;
 }

 if (ip->i_eattr) {
  error = gfs2_ea_dealloc(ip);
  if (error)
   goto out_unlock;
 }

 if (!gfs2_is_stuffed(ip)) {
  error = gfs2_file_dealloc(ip);
  if (error)
   goto out_unlock;
 }

 error = gfs2_dinode_dealloc(ip);
 goto out_unlock;

out_truncate:
 if (test_bit(GLF_DIRTY, &ip->i_gl->gl_flags) &&
            !(current->flags & PF_MEMALLOC)) {
  struct buffer_head *bh;
  struct gfs2_dinode *di;
  struct timespec atime;
  error = gfs2_meta_inode_buffer(ip, &bh);
  if (!error) {
   di = (struct gfs2_dinode *)bh->b_data;
   atime.tv_sec = be64_to_cpu(di->di_atime);
   atime.tv_nsec = be32_to_cpu(di->di_atime_nsec);
   if (timespec_compare(&inode->i_atime, &atime) > 0) {
    error = gfs2_trans_begin(sdp, RES_DINODE, 0);
    if (error == 0) {
     gfs2_trans_add_meta(ip->i_gl, bh);
     gfs2_dinode_out(ip, bh->b_data);
     gfs2_trans_end(sdp);
    }
   }
   brelse(bh);
  }
 }
 gfs2_log_flush(sdp, ip->i_gl);
 if (test_bit(GLF_DIRTY, &ip->i_gl->gl_flags)) {
  struct address_space *metamapping = gfs2_glock2aspace(ip->i_gl);
  filemap_fdatawrite(metamapping);
  filemap_fdatawait(metamapping);
 }
 write_inode_now(inode, 1);
 gfs2_ail_flush(ip->i_gl, 0);


 error = gfs2_trans_begin(sdp, 0, sdp->sd_jdesc->jd_blocks);
 if (error)
  goto out_unlock;

 truncate_inode_pages(&inode->i_data, 0);
 gfs2_trans_end(sdp);

out_unlock:

 if (gfs2_rs_active(ip->i_res))
  gfs2_rs_deltree(ip->i_res);

 if (test_bit(HIF_HOLDER, &ip->i_iopen_gh.gh_iflags)) {
  ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
  gfs2_glock_dq(&ip->i_iopen_gh);
 }
 gfs2_holder_uninit(&ip->i_iopen_gh);
 gfs2_glock_dq_uninit(&gh);
 if (error && error != GLR_TRYFAILED && error != -EROFS)
  fs_warn(sdp, "gfs2_delete_inode: %d\n", error);
out:

 truncate_inode_pages(&inode->i_data, 0);
 gfs2_rs_delete(ip);
 gfs2_ordered_del_inode(ip);
 clear_inode(inode);
}
