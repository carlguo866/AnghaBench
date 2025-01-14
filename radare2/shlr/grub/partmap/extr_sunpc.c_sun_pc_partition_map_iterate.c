
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_sun_pc_partition_descriptor {scalar_t__ id; int num_sectors; int start_sector; } ;
struct grub_sun_pc_block {struct grub_sun_pc_partition_descriptor* partitions; int magic; } ;
struct grub_partition {int dummy; } ;
typedef TYPE_1__* grub_partition_t ;
typedef scalar_t__ grub_err_t ;
typedef int grub_disk_t ;
struct TYPE_3__ {int number; void* len; void* start; int * partmap; } ;


 int GRUB_ERR_BAD_PART_TABLE ;
 scalar_t__ GRUB_PARTMAP_SUN_PC_MAGIC ;
 int GRUB_PARTMAP_SUN_PC_MAX_PARTS ;
 scalar_t__ GRUB_PARTMAP_SUN_PC_WHOLE_DISK_ID ;
 scalar_t__ grub_disk_read (int ,int,int ,int,struct grub_sun_pc_block*) ;
 scalar_t__ grub_errno ;
 scalar_t__ grub_error (int ,char*) ;
 int grub_free (TYPE_1__*) ;
 scalar_t__ grub_le_to_cpu16 (int ) ;
 void* grub_le_to_cpu32 (int ) ;
 int grub_sun_is_valid (struct grub_sun_pc_block*) ;
 int grub_sun_pc_partition_map ;
 scalar_t__ grub_zalloc (int) ;

__attribute__((used)) static grub_err_t
sun_pc_partition_map_iterate (grub_disk_t disk,
         int (*hook) (grub_disk_t disk,
        const grub_partition_t partition,
        void *closure),
         void *closure)
{
  grub_partition_t p;
  struct grub_sun_pc_block block;
  int partnum;
  grub_err_t err;

  p = (grub_partition_t) grub_zalloc (sizeof (struct grub_partition));
  if (! p)
    return grub_errno;

  p->partmap = &grub_sun_pc_partition_map;
  err = grub_disk_read (disk, 1, 0, sizeof (struct grub_sun_pc_block), &block);
  if (err)
    {
      grub_free (p);
      return err;
    }

  if (GRUB_PARTMAP_SUN_PC_MAGIC != grub_le_to_cpu16 (block.magic))
    {
      grub_free (p);
      return grub_error (GRUB_ERR_BAD_PART_TABLE,
    "not a sun_pc partition table");
    }

  if (! grub_sun_is_valid (&block))
    {
      grub_free (p);
      return grub_error (GRUB_ERR_BAD_PART_TABLE, "invalid checksum");
    }



  for (partnum = 0; partnum < GRUB_PARTMAP_SUN_PC_MAX_PARTS; partnum++)
    {
      struct grub_sun_pc_partition_descriptor *desc;

      if (block.partitions[partnum].id == 0
   || block.partitions[partnum].id == GRUB_PARTMAP_SUN_PC_WHOLE_DISK_ID)
 continue;

      desc = &block.partitions[partnum];
      p->start = grub_le_to_cpu32 (desc->start_sector);
      p->len = grub_le_to_cpu32 (desc->num_sectors);
      p->number = partnum;
      if (p->len)
 {
   if (hook (disk, p, closure))
     partnum = GRUB_PARTMAP_SUN_PC_MAX_PARTS;
 }
    }

  grub_free (p);

  return grub_errno;
}
