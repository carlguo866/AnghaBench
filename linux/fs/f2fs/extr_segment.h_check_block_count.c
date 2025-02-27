
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sit_entry {int valid_map; } ;
struct f2fs_sb_info {int blocks_per_seg; } ;


 int EFSCORRUPTED ;
 int GET_SIT_VBLOCKS (struct f2fs_sit_entry*) ;
 int SBI_NEED_FSCK ;
 int TOTAL_SEGS (struct f2fs_sb_info*) ;
 int f2fs_err (struct f2fs_sb_info*,char*,int,int) ;
 int find_next_bit_le (int *,int,int) ;
 int find_next_zero_bit_le (int *,int,int) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;
 scalar_t__ test_bit_le (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int check_block_count(struct f2fs_sb_info *sbi,
  int segno, struct f2fs_sit_entry *raw_sit)
{
 bool is_valid = test_bit_le(0, raw_sit->valid_map) ? 1 : 0;
 int valid_blocks = 0;
 int cur_pos = 0, next_pos;


 do {
  if (is_valid) {
   next_pos = find_next_zero_bit_le(&raw_sit->valid_map,
     sbi->blocks_per_seg,
     cur_pos);
   valid_blocks += next_pos - cur_pos;
  } else
   next_pos = find_next_bit_le(&raw_sit->valid_map,
     sbi->blocks_per_seg,
     cur_pos);
  cur_pos = next_pos;
  is_valid = !is_valid;
 } while (cur_pos < sbi->blocks_per_seg);

 if (unlikely(GET_SIT_VBLOCKS(raw_sit) != valid_blocks)) {
  f2fs_err(sbi, "Mismatch valid blocks %d vs. %d",
    GET_SIT_VBLOCKS(raw_sit), valid_blocks);
  set_sbi_flag(sbi, SBI_NEED_FSCK);
  return -EFSCORRUPTED;
 }


 if (unlikely(GET_SIT_VBLOCKS(raw_sit) > sbi->blocks_per_seg
     || segno > TOTAL_SEGS(sbi) - 1)) {
  f2fs_err(sbi, "Wrong valid blocks %d or segno %u",
    GET_SIT_VBLOCKS(raw_sit), segno);
  set_sbi_flag(sbi, SBI_NEED_FSCK);
  return -EFSCORRUPTED;
 }
 return 0;
}
