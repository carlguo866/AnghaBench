
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {int f_flags; struct dentry* f_dentry; TYPE_1__* f_mapping; } ;
struct dentry {int d_inode; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int host; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 struct gfs2_sbd* GFS2_SB (int ) ;
 int LM_ST_SHARED ;
 int O_APPEND ;
 int generic_file_aio_write (struct kiocb*,struct iovec const*,unsigned long,int ) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_rs_alloc (struct gfs2_inode*) ;
 int gfs2_size_hint (int ,int ,size_t) ;
 size_t iov_length (struct iovec const*,unsigned long) ;

__attribute__((used)) static ssize_t gfs2_file_aio_write(struct kiocb *iocb, const struct iovec *iov,
       unsigned long nr_segs, loff_t pos)
{
 struct file *file = iocb->ki_filp;
 size_t writesize = iov_length(iov, nr_segs);
 struct dentry *dentry = file->f_dentry;
 struct gfs2_inode *ip = GFS2_I(dentry->d_inode);
 struct gfs2_sbd *sdp;
 int ret;

 sdp = GFS2_SB(file->f_mapping->host);
 ret = gfs2_rs_alloc(ip);
 if (ret)
  return ret;

 gfs2_size_hint(file->f_dentry->d_inode, pos, writesize);
 if (file->f_flags & O_APPEND) {
  struct gfs2_holder gh;

  ret = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, 0, &gh);
  if (ret)
   return ret;
  gfs2_glock_dq_uninit(&gh);
 }

 return generic_file_aio_write(iocb, iov, nr_segs, pos);
}
