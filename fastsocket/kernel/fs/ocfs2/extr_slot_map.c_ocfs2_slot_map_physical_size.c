
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int max_slots; } ;
struct ocfs2_extended_slot {int dummy; } ;
struct inode {int dummy; } ;
typedef int __le16 ;


 int ENOSPC ;
 int ML_ERROR ;
 unsigned long long i_size_read (struct inode*) ;
 int mlog (int ,char*,unsigned long long,unsigned long long) ;
 scalar_t__ ocfs2_uses_extended_slot_map (struct ocfs2_super*) ;

__attribute__((used)) static int ocfs2_slot_map_physical_size(struct ocfs2_super *osb,
     struct inode *inode,
     unsigned long long *bytes)
{
 unsigned long long bytes_needed;

 if (ocfs2_uses_extended_slot_map(osb)) {
  bytes_needed = osb->max_slots *
   sizeof(struct ocfs2_extended_slot);
 } else {
  bytes_needed = osb->max_slots * sizeof(__le16);
 }
 if (bytes_needed > i_size_read(inode)) {
  mlog(ML_ERROR,
       "Slot map file is too small!  (size %llu, needed %llu)\n",
       i_size_read(inode), bytes_needed);
  return -ENOSPC;
 }

 *bytes = bytes_needed;
 return 0;
}
