
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {struct page* page; struct vm_area_struct* vma; } ;
struct vm_area_struct {struct file* vm_file; } ;
struct page {unsigned long index; struct address_space* mapping; } ;
struct inode {int i_sb; struct address_space* i_mapping; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef unsigned long loff_t ;
typedef int handle_t ;
typedef int get_block_t ;
struct TYPE_2__ {int i_mmap_sem; } ;


 int DELALLOC ;
 int ENOSPC ;
 int EXT4_HT_WRITE_PAGE ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_STATE_JDATA ;
 scalar_t__ IS_ERR (int *) ;
 int IS_IMMUTABLE (struct inode*) ;
 unsigned long PAGE_MASK ;
 int PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int VM_FAULT_LOCKED ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_SIGBUS ;
 int block_page_mkwrite (struct vm_area_struct*,struct vm_fault*,int *) ;
 int block_page_mkwrite_return (int) ;
 int do_journal_get_write_access ;
 int down_read (int *) ;
 int ext4_bh_unmapped ;
 int ext4_convert_inline_data (struct inode*) ;
 int * ext4_da_get_block_prep ;
 int * ext4_get_block ;
 int * ext4_get_block_unwritten ;
 int * ext4_journal_start (struct inode*,int ,int ) ;
 int ext4_journal_stop (int *) ;
 int ext4_nonda_switch (int ) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 scalar_t__ ext4_should_dioread_nolock (struct inode*) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 scalar_t__ ext4_walk_page_buffers (int *,int ,int ,unsigned long,int *,int ) ;
 int ext4_writepage_trans_blocks (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int file_update_time (struct file*) ;
 unsigned long i_size_read (struct inode*) ;
 int lock_page (struct page*) ;
 int page_buffers (struct page*) ;
 scalar_t__ page_has_buffers (struct page*) ;
 unsigned long page_offset (struct page*) ;
 int sb_end_pagefault (int ) ;
 int sb_start_pagefault (int ) ;
 scalar_t__ test_opt (int ,int ) ;
 scalar_t__ unlikely (int ) ;
 int unlock_page (struct page*) ;
 int up_read (int *) ;
 int wait_for_stable_page (struct page*) ;

vm_fault_t ext4_page_mkwrite(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct page *page = vmf->page;
 loff_t size;
 unsigned long len;
 int err;
 vm_fault_t ret;
 struct file *file = vma->vm_file;
 struct inode *inode = file_inode(file);
 struct address_space *mapping = inode->i_mapping;
 handle_t *handle;
 get_block_t *get_block;
 int retries = 0;

 if (unlikely(IS_IMMUTABLE(inode)))
  return VM_FAULT_SIGBUS;

 sb_start_pagefault(inode->i_sb);
 file_update_time(vma->vm_file);

 down_read(&EXT4_I(inode)->i_mmap_sem);

 err = ext4_convert_inline_data(inode);
 if (err)
  goto out_ret;


 if (test_opt(inode->i_sb, DELALLOC) &&
     !ext4_should_journal_data(inode) &&
     !ext4_nonda_switch(inode->i_sb)) {
  do {
   err = block_page_mkwrite(vma, vmf,
         ext4_da_get_block_prep);
  } while (err == -ENOSPC &&
         ext4_should_retry_alloc(inode->i_sb, &retries));
  goto out_ret;
 }

 lock_page(page);
 size = i_size_read(inode);

 if (page->mapping != mapping || page_offset(page) > size) {
  unlock_page(page);
  ret = VM_FAULT_NOPAGE;
  goto out;
 }

 if (page->index == size >> PAGE_SHIFT)
  len = size & ~PAGE_MASK;
 else
  len = PAGE_SIZE;




 if (page_has_buffers(page)) {
  if (!ext4_walk_page_buffers(((void*)0), page_buffers(page),
         0, len, ((void*)0),
         ext4_bh_unmapped)) {

   wait_for_stable_page(page);
   ret = VM_FAULT_LOCKED;
   goto out;
  }
 }
 unlock_page(page);

 if (ext4_should_dioread_nolock(inode))
  get_block = ext4_get_block_unwritten;
 else
  get_block = ext4_get_block;
retry_alloc:
 handle = ext4_journal_start(inode, EXT4_HT_WRITE_PAGE,
        ext4_writepage_trans_blocks(inode));
 if (IS_ERR(handle)) {
  ret = VM_FAULT_SIGBUS;
  goto out;
 }
 err = block_page_mkwrite(vma, vmf, get_block);
 if (!err && ext4_should_journal_data(inode)) {
  if (ext4_walk_page_buffers(handle, page_buffers(page), 0,
     PAGE_SIZE, ((void*)0), do_journal_get_write_access)) {
   unlock_page(page);
   ret = VM_FAULT_SIGBUS;
   ext4_journal_stop(handle);
   goto out;
  }
  ext4_set_inode_state(inode, EXT4_STATE_JDATA);
 }
 ext4_journal_stop(handle);
 if (err == -ENOSPC && ext4_should_retry_alloc(inode->i_sb, &retries))
  goto retry_alloc;
out_ret:
 ret = block_page_mkwrite_return(err);
out:
 up_read(&EXT4_I(inode)->i_mmap_sem);
 sb_end_pagefault(inode->i_sb);
 return ret;
}
