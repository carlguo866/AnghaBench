
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_crypt_stat {int extent_shift; int extent_mask; int extent_size; } ;
typedef int loff_t ;


 int ecryptfs_lower_header_size (struct ecryptfs_crypt_stat*) ;

__attribute__((used)) static loff_t
upper_size_to_lower_size(struct ecryptfs_crypt_stat *crypt_stat,
    loff_t upper_size)
{
 loff_t lower_size;

 lower_size = ecryptfs_lower_header_size(crypt_stat);
 if (upper_size != 0) {
  loff_t num_extents;

  num_extents = upper_size >> crypt_stat->extent_shift;
  if (upper_size & ~crypt_stat->extent_mask)
   num_extents++;
  lower_size += (num_extents * crypt_stat->extent_size);
 }
 return lower_size;
}
