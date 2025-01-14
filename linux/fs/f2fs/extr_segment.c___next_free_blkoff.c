
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seg_entry {scalar_t__ cur_valid_map; scalar_t__ ckpt_valid_map; } ;
struct f2fs_sb_info {int blocks_per_seg; } ;
struct curseg_info {int next_blkoff; int segno; } ;
typedef int block_t ;
struct TYPE_2__ {unsigned long* tmp_map; } ;


 TYPE_1__* SIT_I (struct f2fs_sb_info*) ;
 int SIT_VBLOCK_MAP_SIZE ;
 int __find_rev_next_zero_bit (unsigned long*,int ,int ) ;
 struct seg_entry* get_seg_entry (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static void __next_free_blkoff(struct f2fs_sb_info *sbi,
   struct curseg_info *seg, block_t start)
{
 struct seg_entry *se = get_seg_entry(sbi, seg->segno);
 int entries = SIT_VBLOCK_MAP_SIZE / sizeof(unsigned long);
 unsigned long *target_map = SIT_I(sbi)->tmp_map;
 unsigned long *ckpt_map = (unsigned long *)se->ckpt_valid_map;
 unsigned long *cur_map = (unsigned long *)se->cur_valid_map;
 int i, pos;

 for (i = 0; i < entries; i++)
  target_map[i] = ckpt_map[i] | cur_map[i];

 pos = __find_rev_next_zero_bit(target_map, sbi->blocks_per_seg, start);

 seg->next_blkoff = pos;
}
