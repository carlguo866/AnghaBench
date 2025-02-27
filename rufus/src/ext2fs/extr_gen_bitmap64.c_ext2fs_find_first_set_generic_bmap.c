
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ start ;
typedef TYPE_2__* ext2fs_generic_bitmap_64 ;
typedef int ext2fs_generic_bitmap ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ end ;
typedef int blk_t ;
typedef int __u64 ;
struct TYPE_7__ {int cluster_bits; int start; int end; TYPE_1__* bitmap_ops; } ;
struct TYPE_6__ {scalar_t__ (* test_bmap ) (TYPE_2__*,int) ;scalar_t__ (* find_first_set ) (TYPE_2__*,int,int,int*) ;} ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 scalar_t__ EXT2FS_IS_32_BITMAP (int ) ;
 int EXT2FS_IS_64_BITMAP (int ) ;
 int EXT2FS_TEST_ERROR ;
 scalar_t__ ext2fs_find_first_set_generic_bitmap (int ,int,int,int*) ;
 int ext2fs_warn_bitmap2 (int ,int ,int) ;
 scalar_t__ stub1 (TYPE_2__*,int,int,int*) ;
 scalar_t__ stub2 (TYPE_2__*,int) ;
 int warn_bitmap (TYPE_2__*,int ,int) ;

errcode_t ext2fs_find_first_set_generic_bmap(ext2fs_generic_bitmap bitmap,
          __u64 start, __u64 end, __u64 *out)
{
 ext2fs_generic_bitmap_64 bmap64 = (ext2fs_generic_bitmap_64) bitmap;
 __u64 cstart, cend, cout;
 errcode_t retval;

 if (!bitmap)
  return EINVAL;

 if (EXT2FS_IS_32_BITMAP(bitmap)) {
  blk_t blk = 0;

  if (((start) & ~0xffffffffULL) ||
      ((end) & ~0xffffffffULL)) {
   ext2fs_warn_bitmap2(bitmap, EXT2FS_TEST_ERROR, start);
   return EINVAL;
  }

  retval = ext2fs_find_first_set_generic_bitmap(bitmap, start,
             end, &blk);
  if (retval == 0)
   *out = blk;
  return retval;
 }

 if (!EXT2FS_IS_64_BITMAP(bitmap))
  return EINVAL;

 cstart = start >> bmap64->cluster_bits;
 cend = end >> bmap64->cluster_bits;

 if (cstart < bmap64->start || cend > bmap64->end || start > end) {
  warn_bitmap(bmap64, EXT2FS_TEST_ERROR, start);
  return EINVAL;
 }

 if (bmap64->bitmap_ops->find_first_set) {
  retval = bmap64->bitmap_ops->find_first_set(bmap64, cstart,
           cend, &cout);
  if (retval)
   return retval;
 found:
  cout <<= bmap64->cluster_bits;
  *out = (cout >= start) ? cout : start;
  return 0;
 }

 for (cout = cstart; cout <= cend; cout++)
  if (bmap64->bitmap_ops->test_bmap(bmap64, cout))
   goto found;

 return ENOENT;
}
