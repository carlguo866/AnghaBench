
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; } ;
struct ext4_extent_header {scalar_t__ eh_magic; scalar_t__ eh_depth; scalar_t__ eh_max; scalar_t__ eh_entries; } ;


 int EIO ;
 scalar_t__ EXT4_EXT_MAGIC ;
 int __ext4_error (int ,char const*,char*,int ,char const*,int,int,int,int,int,int) ;
 int ext4_ext_max_entries (struct inode*,int) ;
 int ext4_valid_extent_entries (struct inode*,struct ext4_extent_header*,int) ;
 int le16_to_cpu (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __ext4_ext_check(const char *function, struct inode *inode,
     struct ext4_extent_header *eh,
     int depth)
{
 const char *error_msg;
 int max = 0;

 if (unlikely(eh->eh_magic != EXT4_EXT_MAGIC)) {
  error_msg = "invalid magic";
  goto corrupted;
 }
 if (unlikely(le16_to_cpu(eh->eh_depth) != depth)) {
  error_msg = "unexpected eh_depth";
  goto corrupted;
 }
 if (unlikely(eh->eh_max == 0)) {
  error_msg = "invalid eh_max";
  goto corrupted;
 }
 max = ext4_ext_max_entries(inode, depth);
 if (unlikely(le16_to_cpu(eh->eh_max) > max)) {
  error_msg = "too large eh_max";
  goto corrupted;
 }
 if (unlikely(le16_to_cpu(eh->eh_entries) > le16_to_cpu(eh->eh_max))) {
  error_msg = "invalid eh_entries";
  goto corrupted;
 }
 if (!ext4_valid_extent_entries(inode, eh, depth)) {
  error_msg = "invalid extent entries";
  goto corrupted;
 }
 return 0;

corrupted:
 __ext4_error(inode->i_sb, function,
   "bad header/extent in inode #%lu: %s - magic %x, "
   "entries %u, max %u(%u), depth %u(%u)",
   inode->i_ino, error_msg, le16_to_cpu(eh->eh_magic),
   le16_to_cpu(eh->eh_entries), le16_to_cpu(eh->eh_max),
   max, le16_to_cpu(eh->eh_depth), depth);

 return -EIO;
}
