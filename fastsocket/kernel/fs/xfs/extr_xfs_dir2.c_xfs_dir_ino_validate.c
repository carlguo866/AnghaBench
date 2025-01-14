
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ sb_agcount; scalar_t__ sb_agblocks; int sb_inopblog; } ;
struct TYPE_13__ {TYPE_1__ m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef scalar_t__ xfs_ino_t ;
typedef scalar_t__ xfs_agnumber_t ;
typedef int xfs_agino_t ;
typedef scalar_t__ xfs_agblock_t ;


 int EFSCORRUPTED ;
 scalar_t__ XFS_AGINO_TO_INO (TYPE_2__*,scalar_t__,int ) ;
 int XFS_ERRLEVEL_LOW ;
 int XFS_ERROR (int ) ;
 int XFS_ERROR_REPORT (char*,int ,TYPE_2__*) ;
 int XFS_ERRTAG_DIR_INO_VALIDATE ;
 scalar_t__ XFS_INO_TO_AGBNO (TYPE_2__*,scalar_t__) ;
 scalar_t__ XFS_INO_TO_AGNO (TYPE_2__*,scalar_t__) ;
 int XFS_INO_TO_OFFSET (TYPE_2__*,scalar_t__) ;
 int XFS_OFFBNO_TO_AGINO (TYPE_2__*,scalar_t__,int) ;
 int XFS_RANDOM_DIR_INO_VALIDATE ;
 int XFS_TEST_ERROR (int,TYPE_2__*,int ,int ) ;
 scalar_t__ unlikely (int ) ;
 int xfs_warn (TYPE_2__*,char*,unsigned long long) ;

int
xfs_dir_ino_validate(
 xfs_mount_t *mp,
 xfs_ino_t ino)
{
 xfs_agblock_t agblkno;
 xfs_agino_t agino;
 xfs_agnumber_t agno;
 int ino_ok;
 int ioff;

 agno = XFS_INO_TO_AGNO(mp, ino);
 agblkno = XFS_INO_TO_AGBNO(mp, ino);
 ioff = XFS_INO_TO_OFFSET(mp, ino);
 agino = XFS_OFFBNO_TO_AGINO(mp, agblkno, ioff);
 ino_ok =
  agno < mp->m_sb.sb_agcount &&
  agblkno < mp->m_sb.sb_agblocks &&
  agblkno != 0 &&
  ioff < (1 << mp->m_sb.sb_inopblog) &&
  XFS_AGINO_TO_INO(mp, agno, agino) == ino;
 if (unlikely(XFS_TEST_ERROR(!ino_ok, mp, XFS_ERRTAG_DIR_INO_VALIDATE,
   XFS_RANDOM_DIR_INO_VALIDATE))) {
  xfs_warn(mp, "Invalid inode number 0x%Lx",
    (unsigned long long) ino);
  XFS_ERROR_REPORT("xfs_dir_ino_validate", XFS_ERRLEVEL_LOW, mp);
  return XFS_ERROR(EFSCORRUPTED);
 }
 return 0;
}
