
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct m_ext2fs {int* e2fs_maxcluster; int e2fs_contigsumsize; int e2fs_fmod; TYPE_2__* e2fs; int * e2fs_gd; int e2fs_fbcount; scalar_t__ e2fs_fpb; TYPE_1__* e2fs_clustersum; scalar_t__ e2fs_bsize; } ;
struct inode {int i_devvp; struct ext2mount* i_ump; struct m_ext2fs* i_e2fs; } ;
struct ext2mount {int dummy; } ;
struct buf {scalar_t__ b_data; } ;
typedef int int32_t ;
typedef int daddr_t ;
struct TYPE_4__ {int e2fs_fpg; int e2fs_first_dblock; } ;
struct TYPE_3__ {int * cs_sum; } ;


 int EXT2_LOCK (struct ext2mount*) ;
 int EXT2_UNLOCK (struct ext2mount*) ;
 int NBBY ;
 int NOCRED ;
 int bdwrite (struct buf*) ;
 int bread (int ,int ,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int dtog (struct m_ext2fs*,int) ;
 int dtogd (struct m_ext2fs*,int) ;
 int e2fs_gd_get_b_bitmap (int *) ;
 scalar_t__ e2fs_gd_get_nbfree (int *) ;
 int e2fs_gd_set_nbfree (int *,scalar_t__) ;
 int ext2_clusteracct (struct m_ext2fs*,char*,int,int,int) ;
 int fsbtodb (struct m_ext2fs*,int ) ;
 int isclr (char*,int) ;
 int panic (char*) ;
 int setbit (char*,int) ;

__attribute__((used)) static daddr_t
ext2_clusteralloc(struct inode *ip, int cg, daddr_t bpref, int len)
{
 struct m_ext2fs *fs;
 struct ext2mount *ump;
 struct buf *bp;
 char *bbp;
 int bit, error, got, i, loc, run;
 int32_t *lp;
 daddr_t bno;

 fs = ip->i_e2fs;
 ump = ip->i_ump;

 if (fs->e2fs_maxcluster[cg] < len)
  return (0);

 EXT2_UNLOCK(ump);
 error = bread(ip->i_devvp,
     fsbtodb(fs, e2fs_gd_get_b_bitmap(&fs->e2fs_gd[cg])),
     (int)fs->e2fs_bsize, NOCRED, &bp);
 if (error)
  goto fail_lock;

 bbp = (char *)bp->b_data;
 EXT2_LOCK(ump);




 lp = &fs->e2fs_clustersum[cg].cs_sum[len];
 for (i = len; i <= fs->e2fs_contigsumsize; i++)
  if (*lp++ > 0)
   break;
 if (i > fs->e2fs_contigsumsize) {






  lp = &fs->e2fs_clustersum[cg].cs_sum[len - 1];
  for (i = len - 1; i > 0; i--)
   if (*lp-- > 0)
    break;
  fs->e2fs_maxcluster[cg] = i;
  goto fail;
 }
 EXT2_UNLOCK(ump);


 if (dtog(fs, bpref) != cg)
  bpref = 0;
 if (bpref != 0)
  bpref = dtogd(fs, bpref);
 loc = bpref / NBBY;
 bit = 1 << (bpref % NBBY);
 for (run = 0, got = bpref; got < fs->e2fs->e2fs_fpg; got++) {
  if ((bbp[loc] & bit) != 0)
   run = 0;
  else {
   run++;
   if (run == len)
    break;
  }
  if ((got & (NBBY - 1)) != (NBBY - 1))
   bit <<= 1;
  else {
   loc++;
   bit = 1;
  }
 }

 if (got >= fs->e2fs->e2fs_fpg)
  goto fail_lock;


 for (i = 1; i < len; i++)
  if (!isclr(bbp, got - run + i))
   panic("ext2_clusteralloc: map mismatch");

 bno = got - run + 1;
 if (bno >= fs->e2fs->e2fs_fpg)
  panic("ext2_clusteralloc: allocated out of group");

 EXT2_LOCK(ump);
 for (i = 0; i < len; i += fs->e2fs_fpb) {
  setbit(bbp, bno + i);
  ext2_clusteracct(fs, bbp, cg, bno + i, -1);
  fs->e2fs_fbcount--;
  e2fs_gd_set_nbfree(&fs->e2fs_gd[cg],
      e2fs_gd_get_nbfree(&fs->e2fs_gd[cg]) - 1);
 }
 fs->e2fs_fmod = 1;
 EXT2_UNLOCK(ump);

 bdwrite(bp);
 return (cg * fs->e2fs->e2fs_fpg + fs->e2fs->e2fs_first_dblock + bno);

fail_lock:
 EXT2_LOCK(ump);
fail:
 brelse(bp);
 return (0);
}
