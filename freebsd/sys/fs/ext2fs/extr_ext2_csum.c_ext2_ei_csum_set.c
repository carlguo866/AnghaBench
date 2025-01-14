
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct m_ext2fs {int dummy; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct ext2fs_dinode {int e2di_chksum_lo; scalar_t__ e2di_extra_isize; int e2di_chksum_hi; } ;


 scalar_t__ E2FS_REV0_INODE_SIZE ;
 int EXT2F_ROCOMPAT_METADATA_CKSUM ;
 int EXT2_HAS_RO_COMPAT_FEATURE (struct m_ext2fs*,int ) ;
 scalar_t__ EXT2_INODE_CSUM_HI_EXTRA_END ;
 scalar_t__ EXT2_INODE_SIZE (struct m_ext2fs*) ;
 int ext2_ei_csum (struct inode*,struct ext2fs_dinode*) ;

void
ext2_ei_csum_set(struct inode *ip, struct ext2fs_dinode *ei)
{
 struct m_ext2fs *fs;
 uint32_t crc;

 fs = ip->i_e2fs;

 if (!EXT2_HAS_RO_COMPAT_FEATURE(fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
  return;

 crc = ext2_ei_csum(ip, ei);

 ei->e2di_chksum_lo = crc & 0xFFFF;
 if ((EXT2_INODE_SIZE(fs) > E2FS_REV0_INODE_SIZE &&
     ei->e2di_extra_isize >= EXT2_INODE_CSUM_HI_EXTRA_END))
  ei->e2di_chksum_hi = crc >> 16;
}
