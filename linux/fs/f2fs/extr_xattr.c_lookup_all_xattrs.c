
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_ino; } ;
struct f2fs_xattr_entry {int dummy; } ;
typedef scalar_t__ nid_t ;
struct TYPE_2__ {scalar_t__ i_xattr_nid; } ;


 int EFSCORRUPTED ;
 int ENODATA ;
 int ENOMEM ;
 TYPE_1__* F2FS_I (struct inode*) ;
 int F2FS_I_SB (struct inode*) ;
 int GFP_NOFS ;
 scalar_t__ IS_XATTR_LAST_ENTRY (struct f2fs_xattr_entry*) ;
 int SBI_NEED_FSCK ;
 void* XATTR_HDR (void*) ;
 int XATTR_PADDING_SIZE ;
 int XATTR_SIZE (scalar_t__,struct inode*) ;
 struct f2fs_xattr_entry* __find_inline_xattr (struct inode*,void*,void**,unsigned int,unsigned int,char const*) ;
 struct f2fs_xattr_entry* __find_xattr (void*,void*,unsigned int,unsigned int,char const*) ;
 int f2fs_err (int ,char*,int ) ;
 void* f2fs_kzalloc (int ,int,int ) ;
 unsigned int inline_xattr_size (struct inode*) ;
 int kvfree (void*) ;
 int read_inline_xattr (struct inode*,struct page*,void*) ;
 int read_xattr_block (struct inode*,void*) ;
 int set_sbi_flag (int ,int ) ;

__attribute__((used)) static int lookup_all_xattrs(struct inode *inode, struct page *ipage,
    unsigned int index, unsigned int len,
    const char *name, struct f2fs_xattr_entry **xe,
    void **base_addr, int *base_size)
{
 void *cur_addr, *txattr_addr, *last_txattr_addr;
 void *last_addr = ((void*)0);
 nid_t xnid = F2FS_I(inode)->i_xattr_nid;
 unsigned int inline_size = inline_xattr_size(inode);
 int err = 0;

 if (!xnid && !inline_size)
  return -ENODATA;

 *base_size = XATTR_SIZE(xnid, inode) + XATTR_PADDING_SIZE;
 txattr_addr = f2fs_kzalloc(F2FS_I_SB(inode), *base_size, GFP_NOFS);
 if (!txattr_addr)
  return -ENOMEM;

 last_txattr_addr = (void *)txattr_addr + XATTR_SIZE(xnid, inode);


 if (inline_size) {
  err = read_inline_xattr(inode, ipage, txattr_addr);
  if (err)
   goto out;

  *xe = __find_inline_xattr(inode, txattr_addr, &last_addr,
      index, len, name);
  if (*xe) {
   *base_size = inline_size;
   goto check;
  }
 }


 if (xnid) {
  err = read_xattr_block(inode, txattr_addr);
  if (err)
   goto out;
 }

 if (last_addr)
  cur_addr = XATTR_HDR(last_addr) - 1;
 else
  cur_addr = txattr_addr;

 *xe = __find_xattr(cur_addr, last_txattr_addr, index, len, name);
 if (!*xe) {
  f2fs_err(F2FS_I_SB(inode), "inode (%lu) has corrupted xattr",
        inode->i_ino);
  set_sbi_flag(F2FS_I_SB(inode), SBI_NEED_FSCK);
  err = -EFSCORRUPTED;
  goto out;
 }
check:
 if (IS_XATTR_LAST_ENTRY(*xe)) {
  err = -ENODATA;
  goto out;
 }

 *base_addr = txattr_addr;
 return 0;
out:
 kvfree(txattr_addr);
 return err;
}
