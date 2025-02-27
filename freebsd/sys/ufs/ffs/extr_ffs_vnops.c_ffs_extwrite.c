
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uoff_t ;
typedef int ufs_lbn_t ;
struct vnode {int dummy; } ;
struct uio {scalar_t__ uio_rw; scalar_t__ uio_offset; scalar_t__ uio_resid; } ;
struct ufs2_dinode {scalar_t__ di_extsize; int di_mode; } ;
struct ucred {int dummy; } ;
struct inode {int i_mode; int i_flag; struct ufs2_dinode* i_din2; } ;
struct fs {scalar_t__ fs_magic; int fs_bsize; } ;
struct buf {int b_flags; int b_resid; scalar_t__ b_data; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;


 int BA_CLRBUF ;
 int B_CACHE ;
 int EFBIG ;
 scalar_t__ FS_UFS2_MAGIC ;
 int IN_CHANGE ;
 int IO_APPEND ;
 int IO_ASYNC ;
 int IO_DIRECT ;
 int IO_EXT ;
 int IO_SYNC ;
 int IO_UNIT ;
 int ISGID ;
 int ISUID ;
 struct fs* ITOFS (struct inode*) ;
 int KASSERT (int,char*) ;
 int PRIV_VFS_RETAINSUGID ;
 int UFS_BALLOC (struct vnode*,scalar_t__,int,struct ucred*,int,struct buf**) ;
 int UFS_NXADDR ;
 scalar_t__ UIO_WRITE ;
 struct inode* VTOI (struct vnode*) ;
 int bawrite (struct buf*) ;
 int bdwrite (struct buf*) ;
 int blkoff (struct fs*,scalar_t__) ;
 scalar_t__ buf_dirty_count_severe () ;
 int bwrite (struct buf*) ;
 int ffs_truncate (struct vnode*,scalar_t__,int,struct ucred*) ;
 int ffs_update (struct vnode*,int) ;
 int lblkno (struct fs*,scalar_t__) ;
 int panic (char*) ;
 scalar_t__ priv_check_cred (struct ucred*,int ) ;
 int sblksize (struct fs*,scalar_t__,int ) ;
 int uiomove (char*,int,struct uio*) ;
 int vfs_bio_clrbuf (struct buf*) ;
 int vfs_bio_set_flags (struct buf*,int) ;
 scalar_t__ vm_page_count_severe () ;

__attribute__((used)) static int
ffs_extwrite(struct vnode *vp, struct uio *uio, int ioflag, struct ucred *ucred)
{
 struct inode *ip;
 struct ufs2_dinode *dp;
 struct fs *fs;
 struct buf *bp;
 ufs_lbn_t lbn;
 off_t osize;
 ssize_t resid;
 int blkoffset, error, flags, size, xfersize;

 ip = VTOI(vp);
 fs = ITOFS(ip);
 dp = ip->i_din2;






 if (ioflag & IO_APPEND)
  uio->uio_offset = dp->di_extsize;
 KASSERT(uio->uio_offset >= 0, ("ffs_extwrite: uio->uio_offset < 0"));
 KASSERT(uio->uio_resid >= 0, ("ffs_extwrite: uio->uio_resid < 0"));
 if ((uoff_t)uio->uio_offset + uio->uio_resid >
     UFS_NXADDR * fs->fs_bsize)
  return (EFBIG);

 resid = uio->uio_resid;
 osize = dp->di_extsize;
 flags = IO_EXT;
 if (ioflag & IO_SYNC)
  flags |= IO_SYNC;

 for (error = 0; uio->uio_resid > 0;) {
  lbn = lblkno(fs, uio->uio_offset);
  blkoffset = blkoff(fs, uio->uio_offset);
  xfersize = fs->fs_bsize - blkoffset;
  if (uio->uio_resid < xfersize)
   xfersize = uio->uio_resid;





  if (fs->fs_bsize > xfersize)
   flags |= BA_CLRBUF;
  else
   flags &= ~BA_CLRBUF;
  error = UFS_BALLOC(vp, uio->uio_offset, xfersize,
      ucred, flags, &bp);
  if (error != 0)
   break;







  if ((bp->b_flags & B_CACHE) == 0 && fs->fs_bsize <= xfersize)
   vfs_bio_clrbuf(bp);

  if (uio->uio_offset + xfersize > dp->di_extsize)
   dp->di_extsize = uio->uio_offset + xfersize;

  size = sblksize(fs, dp->di_extsize, lbn) - bp->b_resid;
  if (size < xfersize)
   xfersize = size;

  error =
      uiomove((char *)bp->b_data + blkoffset, (int)xfersize, uio);

  vfs_bio_set_flags(bp, ioflag);
  if (ioflag & IO_SYNC) {
   (void)bwrite(bp);
  } else if (vm_page_count_severe() ||
       buf_dirty_count_severe() ||
       xfersize + blkoffset == fs->fs_bsize ||
       (ioflag & (IO_ASYNC | IO_DIRECT)))
   bawrite(bp);
  else
   bdwrite(bp);
  if (error || xfersize == 0)
   break;
  ip->i_flag |= IN_CHANGE;
 }





 if ((ip->i_mode & (ISUID | ISGID)) && resid > uio->uio_resid && ucred) {
  if (priv_check_cred(ucred, PRIV_VFS_RETAINSUGID)) {
   ip->i_mode &= ~(ISUID | ISGID);
   dp->di_mode = ip->i_mode;
  }
 }
 if (error) {
  if (ioflag & IO_UNIT) {
   (void)ffs_truncate(vp, osize,
       IO_EXT | (ioflag&IO_SYNC), ucred);
   uio->uio_offset -= resid - uio->uio_resid;
   uio->uio_resid = resid;
  }
 } else if (resid > uio->uio_resid && (ioflag & IO_SYNC))
  error = ffs_update(vp, 1);
 return (error);
}
