
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;
typedef int u32 ;
struct tcmu_mailbox {int cmd_head; } ;
struct tcmu_dev {int cmdr_size; size_t dbi_thresh; size_t max_blocks; int data_bitmap; int cmdr_last_cleaned; struct tcmu_mailbox* mb_addr; } ;
struct tcmu_cmd {int dummy; } ;


 size_t DATA_BLOCK_SIZE ;
 size_t head_to_end (int,int) ;
 int pr_debug (char*,unsigned long,size_t,...) ;
 size_t spc_bitmap_free (int ,size_t) ;
 size_t spc_free (int,int ,int) ;
 int tcmu_flush_dcache_range (struct tcmu_mailbox*,int) ;
 int tcmu_get_empty_blocks (struct tcmu_dev*,struct tcmu_cmd*) ;

__attribute__((used)) static bool is_ring_space_avail(struct tcmu_dev *udev, struct tcmu_cmd *cmd,
  size_t cmd_size, size_t data_needed)
{
 struct tcmu_mailbox *mb = udev->mb_addr;
 uint32_t blocks_needed = (data_needed + DATA_BLOCK_SIZE - 1)
    / DATA_BLOCK_SIZE;
 size_t space, cmd_needed;
 u32 cmd_head;

 tcmu_flush_dcache_range(mb, sizeof(*mb));

 cmd_head = mb->cmd_head % udev->cmdr_size;





 if (head_to_end(cmd_head, udev->cmdr_size) >= cmd_size)
  cmd_needed = cmd_size;
 else
  cmd_needed = cmd_size + head_to_end(cmd_head, udev->cmdr_size);

 space = spc_free(cmd_head, udev->cmdr_last_cleaned, udev->cmdr_size);
 if (space < cmd_needed) {
  pr_debug("no cmd space: %u %u %u\n", cmd_head,
         udev->cmdr_last_cleaned, udev->cmdr_size);
  return 0;
 }


 space = spc_bitmap_free(udev->data_bitmap, udev->dbi_thresh);
 if ((space * DATA_BLOCK_SIZE) < data_needed) {
  unsigned long blocks_left =
    (udev->max_blocks - udev->dbi_thresh) + space;

  if (blocks_left < blocks_needed) {
   pr_debug("no data space: only %lu available, but ask for %zu\n",
     blocks_left * DATA_BLOCK_SIZE,
     data_needed);
   return 0;
  }

  udev->dbi_thresh += blocks_needed;
  if (udev->dbi_thresh > udev->max_blocks)
   udev->dbi_thresh = udev->max_blocks;
 }

 return tcmu_get_empty_blocks(udev, cmd);
}
