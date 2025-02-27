
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_int ;
struct vop_read_args {int a_ioflag; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct uio {scalar_t__ uio_rw; int uio_resid; scalar_t__ uio_offset; } ;
struct m_ext2fs {scalar_t__ e2fs_maxfilesize; long e2fs_fsize; } ;
struct inode {scalar_t__ i_size; int i_flag; struct m_ext2fs* i_e2fs; } ;
struct buf {scalar_t__ b_data; scalar_t__ b_resid; } ;
typedef scalar_t__ off_t ;
typedef scalar_t__ daddr_t ;
struct TYPE_2__ {int mnt_maxsymlinklen; int mnt_flag; } ;


 int EOVERFLOW ;
 int IN_ACCESS ;
 int IO_SEQSHIFT ;
 int KASSERT (int,char*) ;
 int MNT_NOATIME ;
 int MNT_NOCLUSTERR ;
 int MNT_RDONLY ;
 int NOCRED ;
 scalar_t__ UIO_READ ;
 scalar_t__ VDIR ;
 scalar_t__ VLNK ;
 scalar_t__ VREG ;
 struct inode* VTOI (struct vnode*) ;
 long blkoff (struct m_ext2fs*,scalar_t__) ;
 void* blksize (struct m_ext2fs*,struct inode*,scalar_t__) ;
 int bread (struct vnode*,scalar_t__,long,int ,struct buf**) ;
 int breadn (struct vnode*,scalar_t__,long,scalar_t__*,void**,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int cluster_read (struct vnode*,scalar_t__,scalar_t__,long,int ,long,int,int ,struct buf**) ;
 scalar_t__ lblkno (struct m_ext2fs*,scalar_t__) ;
 scalar_t__ lblktosize (struct m_ext2fs*,scalar_t__) ;
 int panic (char*,char*,...) ;
 int uiomove (char*,int,struct uio*) ;
 int vfs_bio_brelse (struct buf*,int) ;

__attribute__((used)) static int
ext2_read(struct vop_read_args *ap)
{
 struct vnode *vp;
 struct inode *ip;
 struct uio *uio;
 struct m_ext2fs *fs;
 struct buf *bp;
 daddr_t lbn, nextlbn;
 off_t bytesinfile;
 long size, xfersize, blkoffset;
 int error, orig_resid, seqcount;
 int ioflag;

 vp = ap->a_vp;
 uio = ap->a_uio;
 ioflag = ap->a_ioflag;

 seqcount = ap->a_ioflag >> IO_SEQSHIFT;
 ip = VTOI(vp);
 orig_resid = uio->uio_resid;
 KASSERT(orig_resid >= 0, ("ext2_read: uio->uio_resid < 0"));
 if (orig_resid == 0)
  return (0);
 KASSERT(uio->uio_offset >= 0, ("ext2_read: uio->uio_offset < 0"));
 fs = ip->i_e2fs;
 if (uio->uio_offset < ip->i_size &&
     uio->uio_offset >= fs->e2fs_maxfilesize)
  return (EOVERFLOW);

 for (error = 0, bp = ((void*)0); uio->uio_resid > 0; bp = ((void*)0)) {
  if ((bytesinfile = ip->i_size - uio->uio_offset) <= 0)
   break;
  lbn = lblkno(fs, uio->uio_offset);
  nextlbn = lbn + 1;
  size = blksize(fs, ip, lbn);
  blkoffset = blkoff(fs, uio->uio_offset);

  xfersize = fs->e2fs_fsize - blkoffset;
  if (uio->uio_resid < xfersize)
   xfersize = uio->uio_resid;
  if (bytesinfile < xfersize)
   xfersize = bytesinfile;

  if (lblktosize(fs, nextlbn) >= ip->i_size)
   error = bread(vp, lbn, size, NOCRED, &bp);
  else if ((vp->v_mount->mnt_flag & MNT_NOCLUSTERR) == 0) {
   error = cluster_read(vp, ip->i_size, lbn, size,
       NOCRED, blkoffset + uio->uio_resid, seqcount,
       0, &bp);
  } else if (seqcount > 1) {
   u_int nextsize = blksize(fs, ip, nextlbn);

   error = breadn(vp, lbn,
       size, &nextlbn, &nextsize, 1, NOCRED, &bp);
  } else
   error = bread(vp, lbn, size, NOCRED, &bp);
  if (error) {
   brelse(bp);
   bp = ((void*)0);
   break;
  }
  size -= bp->b_resid;
  if (size < xfersize) {
   if (size == 0)
    break;
   xfersize = size;
  }
  error = uiomove((char *)bp->b_data + blkoffset,
      (int)xfersize, uio);
  if (error)
   break;
  vfs_bio_brelse(bp, ioflag);
 }







 if (bp != ((void*)0))
  vfs_bio_brelse(bp, ioflag);

 if ((error == 0 || uio->uio_resid != orig_resid) &&
     (vp->v_mount->mnt_flag & (MNT_NOATIME | MNT_RDONLY)) == 0)
  ip->i_flag |= IN_ACCESS;
 return (error);
}
