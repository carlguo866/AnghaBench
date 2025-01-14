
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int dummy; } ;
struct disk_child {int dummy; } ;
struct buffer_info {scalar_t__ bi_parent; int tb; int bi_position; struct buffer_head* bi_bh; } ;
struct buffer_head {int b_size; scalar_t__ b_blocknr; struct item_head* b_data; } ;
struct block_head {int dummy; } ;


 struct block_head* B_BLK_HEAD (struct buffer_head*) ;
 unsigned long B_FREE_SPACE (struct buffer_head*) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 struct disk_child* B_N_CHILD (scalar_t__,int ) ;
 struct item_head* B_N_PITEM (struct buffer_head*,int) ;
 struct item_head* B_N_PITEM_HEAD (struct buffer_head*,int) ;
 int FIRST_TO_LAST ;
 int IH_SIZE ;
 int LAST_TO_FIRST ;
 int RFALSE (int,char*,...) ;
 int blkh_free_space (struct block_head*) ;
 int blkh_nr_item (struct block_head*) ;
 scalar_t__ dc_block_number (struct disk_child*) ;
 scalar_t__ dc_size (struct disk_child*) ;
 int do_balance_mark_internal_dirty (int ,scalar_t__,int ) ;
 int do_balance_mark_leaf_dirty (int ,struct buffer_head*,int ) ;
 scalar_t__ ih_item_len (struct item_head*) ;
 int ih_location (struct item_head*) ;
 int memcpy (struct item_head*,struct item_head*,int) ;
 int memmove (struct item_head*,struct item_head*,int) ;
 int put_dc_size (struct disk_child*,scalar_t__) ;
 int put_ih_location (struct item_head*,int) ;
 int set_blkh_free_space (struct block_head*,int) ;
 int set_blkh_nr_item (struct block_head*,int) ;

__attribute__((used)) static void leaf_copy_items_entirely(struct buffer_info *dest_bi,
         struct buffer_head *src, int last_first,
         int first, int cpy_num)
{
 struct buffer_head *dest;
 int nr, free_space;
 int dest_before;
 int last_loc, last_inserted_loc, location;
 int i, j;
 struct block_head *blkh;
 struct item_head *ih;

 RFALSE(last_first != LAST_TO_FIRST && last_first != FIRST_TO_LAST,
        "vs-10090: bad last_first parameter %d", last_first);
 RFALSE(B_NR_ITEMS(src) - first < cpy_num,
        "vs-10100: too few items in source %d, required %d from %d",
        B_NR_ITEMS(src), cpy_num, first);
 RFALSE(cpy_num < 0, "vs-10110: can not copy negative amount of items");
 RFALSE(!dest_bi, "vs-10120: can not copy negative amount of items");

 dest = dest_bi->bi_bh;

 RFALSE(!dest, "vs-10130: can not copy negative amount of items");

 if (cpy_num == 0)
  return;

 blkh = B_BLK_HEAD(dest);
 nr = blkh_nr_item(blkh);
 free_space = blkh_free_space(blkh);


 dest_before = (last_first == LAST_TO_FIRST) ? 0 : nr;


 ih = B_N_PITEM_HEAD(dest, dest_before);

 RFALSE(blkh_free_space(blkh) < cpy_num * IH_SIZE,
        "vs-10140: not enough free space for headers %d (needed %d)",
        B_FREE_SPACE(dest), cpy_num * IH_SIZE);


 memmove(ih + cpy_num, ih, (nr - dest_before) * IH_SIZE);


 memcpy(ih, B_N_PITEM_HEAD(src, first), cpy_num * IH_SIZE);

 free_space -= (IH_SIZE * cpy_num);
 set_blkh_free_space(blkh, free_space);


 j = location = (dest_before == 0) ? dest->b_size : ih_location(ih - 1);
 for (i = dest_before; i < nr + cpy_num; i++) {
  location -= ih_item_len(ih + i - dest_before);
  put_ih_location(ih + i - dest_before, location);
 }


 last_loc = ih_location(&(ih[nr + cpy_num - 1 - dest_before]));
 last_inserted_loc = ih_location(&(ih[cpy_num - 1]));


 RFALSE(free_space < j - last_inserted_loc,
        "vs-10150: not enough free space for items %d (needed %d)",
        free_space, j - last_inserted_loc);

 memmove(dest->b_data + last_loc,
  dest->b_data + last_loc + j - last_inserted_loc,
  last_inserted_loc - last_loc);


 memcpy(dest->b_data + last_inserted_loc,
        B_N_PITEM(src, (first + cpy_num - 1)), j - last_inserted_loc);


 set_blkh_nr_item(blkh, nr + cpy_num);
 set_blkh_free_space(blkh, free_space - (j - last_inserted_loc));

 do_balance_mark_leaf_dirty(dest_bi->tb, dest, 0);

 if (dest_bi->bi_parent) {
  struct disk_child *t_dc;
  t_dc = B_N_CHILD(dest_bi->bi_parent, dest_bi->bi_position);
  RFALSE(dc_block_number(t_dc) != dest->b_blocknr,
         "vs-10160: block number in bh does not match to field in disk_child structure %lu and %lu",
         (long unsigned)dest->b_blocknr,
         (long unsigned)dc_block_number(t_dc));
  put_dc_size(t_dc,
       dc_size(t_dc) + (j - last_inserted_loc +
          IH_SIZE * cpy_num));

  do_balance_mark_internal_dirty(dest_bi->tb, dest_bi->bi_parent,
            0);
 }
}
