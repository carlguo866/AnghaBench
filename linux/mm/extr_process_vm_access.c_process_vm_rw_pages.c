
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iov_iter {int dummy; } ;


 int EFAULT ;
 unsigned int PAGE_SIZE ;
 size_t copy_page_from_iter (struct page*,unsigned int,size_t,struct iov_iter*) ;
 size_t copy_page_to_iter (struct page*,unsigned int,size_t,struct iov_iter*) ;
 scalar_t__ iov_iter_count (struct iov_iter*) ;
 int set_page_dirty_lock (struct page*) ;

__attribute__((used)) static int process_vm_rw_pages(struct page **pages,
          unsigned offset,
          size_t len,
          struct iov_iter *iter,
          int vm_write)
{

 while (len && iov_iter_count(iter)) {
  struct page *page = *pages++;
  size_t copy = PAGE_SIZE - offset;
  size_t copied;

  if (copy > len)
   copy = len;

  if (vm_write) {
   copied = copy_page_from_iter(page, offset, copy, iter);
   set_page_dirty_lock(page);
  } else {
   copied = copy_page_to_iter(page, offset, copy, iter);
  }
  len -= copied;
  if (copied < copy && iov_iter_count(iter))
   return -EFAULT;
  offset = 0;
 }
 return 0;
}
