
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct ecryptfs_crypt_stat {int extent_size; int metadata_size; } ;


 int put_unaligned_be16 (scalar_t__,char*) ;
 int put_unaligned_be32 (scalar_t__,char*) ;

void
ecryptfs_write_header_metadata(char *virt,
          struct ecryptfs_crypt_stat *crypt_stat,
          size_t *written)
{
 u32 header_extent_size;
 u16 num_header_extents_at_front;

 header_extent_size = (u32)crypt_stat->extent_size;
 num_header_extents_at_front =
  (u16)(crypt_stat->metadata_size / crypt_stat->extent_size);
 put_unaligned_be32(header_extent_size, virt);
 virt += 4;
 put_unaligned_be16(num_header_extents_at_front, virt);
 (*written) = 6;
}
