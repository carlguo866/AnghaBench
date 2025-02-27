
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_eb {int active_count; int flags; } ;
struct mtdswap_dev {unsigned int* revmap; unsigned int pages_per_eblk; unsigned int* page_data; struct swap_eb* eb_data; int dev; int page_buf; struct mtd_info* mtd; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 void* BLOCK_ERROR ;
 int EBLOCK_READERR ;
 int EIO ;
 unsigned int MTDSWAP_IO_RETRIES ;
 int PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 void* PAGE_UNDEF ;
 int dev_err (int ,char*,int,...) ;
 int mtd_is_bitflip (int) ;
 int mtd_read (struct mtd_info*,int,size_t,size_t*,int ) ;
 int mtdswap_write_block (struct mtdswap_dev*,int ,unsigned int,unsigned int*,int) ;

__attribute__((used)) static int mtdswap_move_block(struct mtdswap_dev *d, unsigned int oldblock,
  unsigned int *newblock)
{
 struct mtd_info *mtd = d->mtd;
 struct swap_eb *eb, *oldeb;
 int ret;
 size_t retlen;
 unsigned int page, retries;
 loff_t readpos;

 page = d->revmap[oldblock];
 readpos = (loff_t) oldblock << PAGE_SHIFT;
 retries = 0;

retry:
 ret = mtd_read(mtd, readpos, PAGE_SIZE, &retlen, d->page_buf);

 if (ret < 0 && !mtd_is_bitflip(ret)) {
  oldeb = d->eb_data + oldblock / d->pages_per_eblk;
  oldeb->flags |= EBLOCK_READERR;

  dev_err(d->dev, "Read Error: %d (block %u)\n", ret,
   oldblock);
  retries++;
  if (retries < MTDSWAP_IO_RETRIES)
   goto retry;

  goto read_error;
 }

 if (retlen != PAGE_SIZE) {
  dev_err(d->dev, "Short read: %zd (block %u)\n", retlen,
         oldblock);
  ret = -EIO;
  goto read_error;
 }

 ret = mtdswap_write_block(d, d->page_buf, page, newblock, 1);
 if (ret < 0) {
  d->page_data[page] = BLOCK_ERROR;
  dev_err(d->dev, "Write error: %d\n", ret);
  return ret;
 }

 eb = d->eb_data + *newblock / d->pages_per_eblk;
 d->page_data[page] = *newblock;
 d->revmap[oldblock] = PAGE_UNDEF;
 eb = d->eb_data + oldblock / d->pages_per_eblk;
 eb->active_count--;

 return 0;

read_error:
 d->page_data[page] = BLOCK_ERROR;
 d->revmap[oldblock] = PAGE_UNDEF;
 return ret;
}
