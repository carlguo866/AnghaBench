
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int mapping; } ;
struct orangefs_writepages {scalar_t__ npages; scalar_t__ off; scalar_t__ len; scalar_t__ maxpages; struct page** pages; int gid; int uid; } ;
struct orangefs_write_range {scalar_t__ pos; scalar_t__ len; int gid; int uid; } ;


 int BUG () ;
 int PagePrivate (struct page*) ;
 int end_page_writeback (struct page*) ;
 int gid_eq (int ,int ) ;
 int mapping_set_error (int ,int) ;
 int orangefs_writepage_locked (struct page*,struct writeback_control*) ;
 int orangefs_writepages_work (struct orangefs_writepages*,struct writeback_control*) ;
 scalar_t__ page_private (struct page*) ;
 int printk (char*) ;
 int uid_eq (int ,int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int orangefs_writepages_callback(struct page *page,
    struct writeback_control *wbc, void *data)
{
 struct orangefs_writepages *ow = data;
 struct orangefs_write_range *wr;
 int ret;

 if (!PagePrivate(page)) {
  unlock_page(page);

  printk("writepages_callback not private!\n");
  BUG();
  return 0;
 }
 wr = (struct orangefs_write_range *)page_private(page);

 ret = -1;
 if (ow->npages == 0) {
  ow->off = wr->pos;
  ow->len = wr->len;
  ow->uid = wr->uid;
  ow->gid = wr->gid;
  ow->pages[ow->npages++] = page;
  ret = 0;
  goto done;
 }
 if (!uid_eq(ow->uid, wr->uid) || !gid_eq(ow->gid, wr->gid)) {
  orangefs_writepages_work(ow, wbc);
  ow->npages = 0;
  ret = -1;
  goto done;
 }
 if (ow->off + ow->len == wr->pos) {
  ow->len += wr->len;
  ow->pages[ow->npages++] = page;
  ret = 0;
  goto done;
 }
done:
 if (ret == -1) {
  if (ow->npages) {
   orangefs_writepages_work(ow, wbc);
   ow->npages = 0;
  }
  ret = orangefs_writepage_locked(page, wbc);
  mapping_set_error(page->mapping, ret);
  unlock_page(page);
  end_page_writeback(page);
 } else {
  if (ow->npages == ow->maxpages) {
   orangefs_writepages_work(ow, wbc);
   ow->npages = 0;
  }
 }
 return ret;
}
