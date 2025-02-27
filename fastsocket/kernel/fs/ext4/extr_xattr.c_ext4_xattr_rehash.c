
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_header {int h_hash; } ;
struct ext4_xattr_entry {int e_hash; } ;
typedef int hash ;
typedef int __u32 ;


 int BLOCK_HASH_SHIFT ;
 struct ext4_xattr_entry* ENTRY (struct ext4_xattr_header*) ;
 struct ext4_xattr_entry* EXT4_XATTR_NEXT (struct ext4_xattr_entry*) ;
 int IS_LAST_ENTRY (struct ext4_xattr_entry*) ;
 int cpu_to_le32 (int) ;
 int ext4_xattr_hash_entry (struct ext4_xattr_header*,struct ext4_xattr_entry*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void ext4_xattr_rehash(struct ext4_xattr_header *header,
         struct ext4_xattr_entry *entry)
{
 struct ext4_xattr_entry *here;
 __u32 hash = 0;

 ext4_xattr_hash_entry(header, entry);
 here = ENTRY(header+1);
 while (!IS_LAST_ENTRY(here)) {
  if (!here->e_hash) {

   hash = 0;
   break;
  }
  hash = (hash << BLOCK_HASH_SHIFT) ^
         (hash >> (8*sizeof(hash) - BLOCK_HASH_SHIFT)) ^
         le32_to_cpu(here->e_hash);
  here = EXT4_XATTR_NEXT(here);
 }
 header->h_hash = cpu_to_le32(hash);
}
