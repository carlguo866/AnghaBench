
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct m_ext2fs {int e2fs_bsize; } ;
struct inode {size_t i_next_alloc_block; int i_flag; scalar_t__* i_db; size_t i_size; scalar_t__* i_ib; int i_next_alloc_goal; struct ext2mount* i_ump; struct m_ext2fs* i_e2fs; } ;
struct indir {size_t in_off; size_t in_lbn; } ;
struct ext2mount {int dummy; } ;
struct buf {int b_bufsize; void* b_blkno; int b_flags; int b_lblkno; scalar_t__ b_data; } ;
typedef scalar_t__ e4fs_daddr_t ;
typedef size_t e2fs_lbn_t ;
typedef scalar_t__ e2fs_daddr_t ;
struct TYPE_2__ {int mnt_flag; } ;


 int BA_CLRBUF ;
 int BA_SEQMASK ;
 int BA_SEQSHIFT ;
 int B_CLUSTEROK ;
 int EFBIG ;
 int EXT2_LOCK (struct ext2mount*) ;
 size_t EXT2_NDADDR ;
 int EXT2_NDIR_BLOCKS ;
 int EXT2_NIADDR ;
 int IN_CHANGE ;
 int IN_E4EXTENTS ;
 int IN_UPDATE ;
 int IO_SYNC ;
 struct vnode* ITOV (struct inode*) ;
 int MAXBSIZE ;
 int MNT_NOCLUSTERR ;
 int NOCRED ;
 scalar_t__ UINT_MAX ;
 int bdwrite (struct buf*) ;
 int bqrelse (struct buf*) ;
 int bread (struct vnode*,size_t,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int bwrite (struct buf*) ;
 int cluster_read (struct vnode*,size_t,size_t,int,int ,int ,int,int ,struct buf**) ;
 scalar_t__ dbtofsb (struct m_ext2fs*,void*) ;
 int ext2_alloc (struct inode*,size_t,scalar_t__,int,struct ucred*,scalar_t__*) ;
 int ext2_blkfree (struct inode*,scalar_t__,int) ;
 scalar_t__ ext2_blkpref (struct inode*,size_t,int,scalar_t__*,int ) ;
 int ext2_ext_balloc (struct inode*,size_t,int,struct ucred*,struct buf**,int) ;
 int ext2_getlbns (struct vnode*,size_t,struct indir*,int*) ;
 void* fsbtodb (struct m_ext2fs*,scalar_t__) ;
 struct buf* getblk (struct vnode*,size_t,int,int ,int ,int ) ;
 int panic (char*) ;
 int vfs_bio_clrbuf (struct buf*) ;

int
ext2_balloc(struct inode *ip, e2fs_lbn_t lbn, int size, struct ucred *cred,
    struct buf **bpp, int flags)
{
 struct m_ext2fs *fs;
 struct ext2mount *ump;
 struct buf *bp, *nbp;
 struct vnode *vp = ITOV(ip);
 struct indir indirs[EXT2_NIADDR + 2];
 e4fs_daddr_t nb, newb;
 e2fs_daddr_t *bap, pref;
 int num, i, error;

 *bpp = ((void*)0);
 if (lbn < 0)
  return (EFBIG);
 fs = ip->i_e2fs;
 ump = ip->i_ump;






 if (lbn == ip->i_next_alloc_block + 1) {
  ip->i_next_alloc_block++;
  ip->i_next_alloc_goal++;
 }

 if (ip->i_flag & IN_E4EXTENTS)
  return (ext2_ext_balloc(ip, lbn, size, cred, bpp, flags));




 if (lbn < EXT2_NDADDR) {
  nb = ip->i_db[lbn];




  if (nb != 0) {
   error = bread(vp, lbn, fs->e2fs_bsize, NOCRED, &bp);
   if (error) {
    return (error);
   }
   bp->b_blkno = fsbtodb(fs, nb);
   if (ip->i_size >= (lbn + 1) * fs->e2fs_bsize) {
    *bpp = bp;
    return (0);
   }
  } else {
   EXT2_LOCK(ump);
   error = ext2_alloc(ip, lbn,
       ext2_blkpref(ip, lbn, (int)lbn, &ip->i_db[0], 0),
       fs->e2fs_bsize, cred, &newb);
   if (error)
    return (error);




   if (newb > UINT_MAX)
    return (EFBIG);
   bp = getblk(vp, lbn, fs->e2fs_bsize, 0, 0, 0);
   bp->b_blkno = fsbtodb(fs, newb);
   if (flags & BA_CLRBUF)
    vfs_bio_clrbuf(bp);
  }
  ip->i_db[lbn] = dbtofsb(fs, bp->b_blkno);
  ip->i_flag |= IN_CHANGE | IN_UPDATE;
  *bpp = bp;
  return (0);
 }



 pref = 0;
 if ((error = ext2_getlbns(vp, lbn, indirs, &num)) != 0)
  return (error);







 --num;
 nb = ip->i_ib[indirs[0].in_off];
 if (nb == 0) {
  EXT2_LOCK(ump);
  pref = ext2_blkpref(ip, lbn, indirs[0].in_off +
      EXT2_NDIR_BLOCKS, &ip->i_db[0], 0);
  if ((error = ext2_alloc(ip, lbn, pref, fs->e2fs_bsize, cred,
      &newb)))
   return (error);
  if (newb > UINT_MAX)
   return (EFBIG);
  nb = newb;
  bp = getblk(vp, indirs[1].in_lbn, fs->e2fs_bsize, 0, 0, 0);
  bp->b_blkno = fsbtodb(fs, newb);
  vfs_bio_clrbuf(bp);




  if ((error = bwrite(bp)) != 0) {
   ext2_blkfree(ip, nb, fs->e2fs_bsize);
   return (error);
  }
  ip->i_ib[indirs[0].in_off] = newb;
  ip->i_flag |= IN_CHANGE | IN_UPDATE;
 }



 for (i = 1;;) {
  error = bread(vp,
      indirs[i].in_lbn, (int)fs->e2fs_bsize, NOCRED, &bp);
  if (error) {
   return (error);
  }
  bap = (e2fs_daddr_t *)bp->b_data;
  nb = bap[indirs[i].in_off];
  if (i == num)
   break;
  i += 1;
  if (nb != 0) {
   bqrelse(bp);
   continue;
  }
  EXT2_LOCK(ump);
  if (pref == 0)
   pref = ext2_blkpref(ip, lbn, indirs[i].in_off, bap,
       bp->b_lblkno);
  error = ext2_alloc(ip, lbn, pref, (int)fs->e2fs_bsize, cred, &newb);
  if (error) {
   brelse(bp);
   return (error);
  }
  if (newb > UINT_MAX)
   return (EFBIG);
  nb = newb;
  nbp = getblk(vp, indirs[i].in_lbn, fs->e2fs_bsize, 0, 0, 0);
  nbp->b_blkno = fsbtodb(fs, nb);
  vfs_bio_clrbuf(nbp);




  if ((error = bwrite(nbp)) != 0) {
   ext2_blkfree(ip, nb, fs->e2fs_bsize);
   brelse(bp);
   return (error);
  }
  bap[indirs[i - 1].in_off] = nb;




  if (flags & IO_SYNC) {
   bwrite(bp);
  } else {
   if (bp->b_bufsize == fs->e2fs_bsize)
    bp->b_flags |= B_CLUSTEROK;
   bdwrite(bp);
  }
 }



 if (nb == 0) {
  EXT2_LOCK(ump);
  pref = ext2_blkpref(ip, lbn, indirs[i].in_off, &bap[0],
      bp->b_lblkno);
  if ((error = ext2_alloc(ip,
      lbn, pref, (int)fs->e2fs_bsize, cred, &newb)) != 0) {
   brelse(bp);
   return (error);
  }
  if (newb > UINT_MAX)
   return (EFBIG);
  nb = newb;
  nbp = getblk(vp, lbn, fs->e2fs_bsize, 0, 0, 0);
  nbp->b_blkno = fsbtodb(fs, nb);
  if (flags & BA_CLRBUF)
   vfs_bio_clrbuf(nbp);
  bap[indirs[i].in_off] = nb;




  if (flags & IO_SYNC) {
   bwrite(bp);
  } else {
   if (bp->b_bufsize == fs->e2fs_bsize)
    bp->b_flags |= B_CLUSTEROK;
   bdwrite(bp);
  }
  *bpp = nbp;
  return (0);
 }
 brelse(bp);
 if (flags & BA_CLRBUF) {
  int seqcount = (flags & BA_SEQMASK) >> BA_SEQSHIFT;

  if (seqcount && (vp->v_mount->mnt_flag & MNT_NOCLUSTERR) == 0) {
   error = cluster_read(vp, ip->i_size, lbn,
       (int)fs->e2fs_bsize, NOCRED,
       MAXBSIZE, seqcount, 0, &nbp);
  } else {
   error = bread(vp, lbn, (int)fs->e2fs_bsize, NOCRED, &nbp);
  }
  if (error) {
   brelse(nbp);
   return (error);
  }
 } else {
  nbp = getblk(vp, lbn, fs->e2fs_bsize, 0, 0, 0);
  nbp->b_blkno = fsbtodb(fs, nb);
 }
 *bpp = nbp;
 return (0);
}
