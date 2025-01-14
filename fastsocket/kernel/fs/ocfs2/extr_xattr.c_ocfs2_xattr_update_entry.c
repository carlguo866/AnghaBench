
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_xattr_value_buf {int (* vb_access ) (int *,int ,int ,int ) ;int vb_bh; } ;
struct ocfs2_xattr_search {TYPE_1__* here; int header; } ;
struct ocfs2_xattr_info {scalar_t__ value_len; } ;
struct inode {int dummy; } ;
typedef int handle_t ;
struct TYPE_3__ {int xe_value_size; int xe_name_offset; } ;


 int INODE_CACHE (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 scalar_t__ OCFS2_XATTR_INLINE_SIZE ;
 int cpu_to_le16 (size_t) ;
 int cpu_to_le64 (scalar_t__) ;
 int mlog_errno (int) ;
 int ocfs2_journal_dirty (int *,int ) ;
 int ocfs2_xattr_hash_entry (struct inode*,int ,TYPE_1__*) ;
 int ocfs2_xattr_set_local (TYPE_1__*,int) ;
 int stub1 (int *,int ,int ,int ) ;

__attribute__((used)) static int ocfs2_xattr_update_entry(struct inode *inode,
        handle_t *handle,
        struct ocfs2_xattr_info *xi,
        struct ocfs2_xattr_search *xs,
        struct ocfs2_xattr_value_buf *vb,
        size_t offs)
{
 int ret;

 ret = vb->vb_access(handle, INODE_CACHE(inode), vb->vb_bh,
       OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 xs->here->xe_name_offset = cpu_to_le16(offs);
 xs->here->xe_value_size = cpu_to_le64(xi->value_len);
 if (xi->value_len <= OCFS2_XATTR_INLINE_SIZE)
  ocfs2_xattr_set_local(xs->here, 1);
 else
  ocfs2_xattr_set_local(xs->here, 0);
 ocfs2_xattr_hash_entry(inode, xs->header, xs->here);

 ret = ocfs2_journal_dirty(handle, vb->vb_bh);
 if (ret < 0)
  mlog_errno(ret);
out:
 return ret;
}
