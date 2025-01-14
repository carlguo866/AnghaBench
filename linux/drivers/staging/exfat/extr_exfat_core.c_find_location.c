
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct fs_info_t {int cluster_size; scalar_t__ root_start_sector; } ;
struct chain_t {scalar_t__ dir; } ;
struct bd_info_t {scalar_t__ sector_size_mask; scalar_t__ sector_size_bits; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {struct bd_info_t bd_info; struct fs_info_t fs_info; } ;


 scalar_t__ CLUSTER_32 (int ) ;
 scalar_t__ DENTRY_SIZE_BITS ;
 TYPE_1__* EXFAT_SB (struct super_block*) ;
 scalar_t__ FFS_SUCCESS ;
 scalar_t__ START_SECTOR (int ) ;
 scalar_t__ _walk_fat_chain (struct super_block*,struct chain_t*,scalar_t__,int *) ;

s32 find_location(struct super_block *sb, struct chain_t *p_dir, s32 entry,
    sector_t *sector, s32 *offset)
{
 s32 off, ret;
 u32 clu = 0;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);

 off = entry << DENTRY_SIZE_BITS;

 if (p_dir->dir == CLUSTER_32(0)) {
  *offset = off & p_bd->sector_size_mask;
  *sector = off >> p_bd->sector_size_bits;
  *sector += p_fs->root_start_sector;
 } else {
  ret = _walk_fat_chain(sb, p_dir, off, &clu);
  if (ret != FFS_SUCCESS)
   return ret;


  off &= p_fs->cluster_size - 1;


  *offset = off & p_bd->sector_size_mask;


  *sector = off >> p_bd->sector_size_bits;
  *sector += START_SECTOR(clu);
 }
 return FFS_SUCCESS;
}
