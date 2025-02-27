
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct inode {scalar_t__ i_size; int i_mapping; int i_blocks; int i_mode; } ;
struct ceph_inode_info {scalar_t__ i_truncate_seq; scalar_t__ i_truncate_size; int i_truncate_pending; scalar_t__ i_reported_size; } ;


 int CEPH_CAP_FILE_BUFFER ;
 int CEPH_CAP_FILE_CACHE ;
 int CEPH_CAP_FILE_EXCL ;
 int CEPH_CAP_FILE_LAZYIO ;
 int CEPH_CAP_FILE_RD ;
 int CEPH_CAP_FILE_WR ;
 scalar_t__ S_ISDIR (int ) ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ __ceph_caps_file_wanted (struct ceph_inode_info*) ;
 int calc_inode_blocks (scalar_t__) ;
 int ceph_fscache_invalidate (struct inode*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 scalar_t__ ceph_seq_cmp (scalar_t__,scalar_t__) ;
 int dout (char*,scalar_t__,scalar_t__) ;
 int i_size_write (struct inode*,scalar_t__) ;
 scalar_t__ mapping_mapped (int ) ;
 int pr_err (char*) ;

int ceph_fill_file_size(struct inode *inode, int issued,
   u32 truncate_seq, u64 truncate_size, u64 size)
{
 struct ceph_inode_info *ci = ceph_inode(inode);
 int queue_trunc = 0;

 if (ceph_seq_cmp(truncate_seq, ci->i_truncate_seq) > 0 ||
     (truncate_seq == ci->i_truncate_seq && size > inode->i_size)) {
  dout("size %lld -> %llu\n", inode->i_size, size);
  if (size > 0 && S_ISDIR(inode->i_mode)) {
   pr_err("fill_file_size non-zero size for directory\n");
   size = 0;
  }
  i_size_write(inode, size);
  inode->i_blocks = calc_inode_blocks(size);
  ci->i_reported_size = size;
  if (truncate_seq != ci->i_truncate_seq) {
   dout("truncate_seq %u -> %u\n",
        ci->i_truncate_seq, truncate_seq);
   ci->i_truncate_seq = truncate_seq;


   WARN_ON_ONCE(issued & (CEPH_CAP_FILE_EXCL |
            CEPH_CAP_FILE_RD |
            CEPH_CAP_FILE_WR |
            CEPH_CAP_FILE_LAZYIO));






   if ((issued & (CEPH_CAP_FILE_CACHE|
           CEPH_CAP_FILE_BUFFER)) ||
       mapping_mapped(inode->i_mapping) ||
       __ceph_caps_file_wanted(ci)) {
    ci->i_truncate_pending++;
    queue_trunc = 1;
   }
  }
 }
 if (ceph_seq_cmp(truncate_seq, ci->i_truncate_seq) >= 0 &&
     ci->i_truncate_size != truncate_size) {
  dout("truncate_size %lld -> %llu\n", ci->i_truncate_size,
       truncate_size);
  ci->i_truncate_size = truncate_size;
 }

 if (queue_trunc)
  ceph_fscache_invalidate(inode);

 return queue_trunc;
}
