
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;


 int __btrfs_add_ordered_extent (struct inode*,int ,int ,int ,int ,int,int ,int) ;

int btrfs_add_ordered_extent_compress(struct inode *inode, u64 file_offset,
          u64 start, u64 len, u64 disk_len,
          int type, int compress_type)
{
 return __btrfs_add_ordered_extent(inode, file_offset, start, len,
       disk_len, type, 0,
       compress_type);
}
