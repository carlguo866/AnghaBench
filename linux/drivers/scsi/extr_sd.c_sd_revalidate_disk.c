
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_disk {unsigned int capacity; unsigned int max_xfer_blocks; unsigned int opt_xfer_blocks; scalar_t__ first_scan; scalar_t__ media_present; TYPE_1__* disk; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ use_16_for_rw; } ;
struct TYPE_4__ {unsigned int max_dev_sectors; unsigned int max_sectors; unsigned int max_hw_sectors; int io_opt; } ;
struct request_queue {TYPE_2__ limits; } ;
struct gendisk {int dummy; } ;
typedef unsigned int sector_t ;
struct TYPE_3__ {struct request_queue* queue; } ;


 scalar_t__ BLK_DEF_MAX_SECTORS ;
 int GFP_KERNEL ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int QUEUE_FLAG_ADD_RANDOM ;
 int QUEUE_FLAG_NONROT ;
 int SCSI_LOG_HLQUEUE (int,int ) ;
 int SD_BUF_SIZE ;
 unsigned int SD_DEF_XFER_BLOCKS ;
 unsigned int SD_MAX_XFER_BLOCKS ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int ,int ) ;
 int logical_to_bytes (struct scsi_device*,unsigned int) ;
 unsigned int logical_to_sectors (struct scsi_device*,unsigned int) ;
 unsigned int min (unsigned int,int ) ;
 unsigned int min_not_zero (unsigned int,unsigned int) ;
 int queue_max_hw_sectors (struct request_queue*) ;
 int scsi_device_online (struct scsi_device*) ;
 scalar_t__ scsi_device_supports_vpd (struct scsi_device*) ;
 struct scsi_disk* scsi_disk (struct gendisk*) ;
 int sd_config_write_same (struct scsi_disk*) ;
 int sd_print_capacity (struct scsi_disk*,unsigned int) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;
 int sd_read_app_tag_own (struct scsi_disk*,unsigned char*) ;
 int sd_read_block_characteristics (struct scsi_disk*) ;
 int sd_read_block_limits (struct scsi_disk*) ;
 int sd_read_block_provisioning (struct scsi_disk*) ;
 int sd_read_cache_type (struct scsi_disk*,unsigned char*) ;
 int sd_read_capacity (struct scsi_disk*,unsigned char*) ;
 int sd_read_security (struct scsi_disk*,unsigned char*) ;
 int sd_read_write_protect_flag (struct scsi_disk*,unsigned char*) ;
 int sd_read_write_same (struct scsi_disk*,unsigned char*) ;
 int sd_set_flush_flag (struct scsi_disk*) ;
 int sd_spinup_disk (struct scsi_disk*) ;
 scalar_t__ sd_validate_opt_xfer_size (struct scsi_disk*,unsigned int) ;
 int sd_zbc_read_zones (struct scsi_disk*,unsigned char*) ;
 int set_capacity (struct gendisk*,unsigned int) ;

__attribute__((used)) static int sd_revalidate_disk(struct gendisk *disk)
{
 struct scsi_disk *sdkp = scsi_disk(disk);
 struct scsi_device *sdp = sdkp->device;
 struct request_queue *q = sdkp->disk->queue;
 sector_t old_capacity = sdkp->capacity;
 unsigned char *buffer;
 unsigned int dev_max, rw_max;

 SCSI_LOG_HLQUEUE(3, sd_printk(KERN_INFO, sdkp,
          "sd_revalidate_disk\n"));





 if (!scsi_device_online(sdp))
  goto out;

 buffer = kmalloc(SD_BUF_SIZE, GFP_KERNEL);
 if (!buffer) {
  sd_printk(KERN_WARNING, sdkp, "sd_revalidate_disk: Memory "
     "allocation failure.\n");
  goto out;
 }

 sd_spinup_disk(sdkp);





 if (sdkp->media_present) {
  sd_read_capacity(sdkp, buffer);







  blk_queue_flag_clear(QUEUE_FLAG_NONROT, q);
  blk_queue_flag_set(QUEUE_FLAG_ADD_RANDOM, q);

  if (scsi_device_supports_vpd(sdp)) {
   sd_read_block_provisioning(sdkp);
   sd_read_block_limits(sdkp);
   sd_read_block_characteristics(sdkp);
   sd_zbc_read_zones(sdkp, buffer);
  }

  sd_print_capacity(sdkp, old_capacity);

  sd_read_write_protect_flag(sdkp, buffer);
  sd_read_cache_type(sdkp, buffer);
  sd_read_app_tag_own(sdkp, buffer);
  sd_read_write_same(sdkp, buffer);
  sd_read_security(sdkp, buffer);
 }





 sd_set_flush_flag(sdkp);


 dev_max = sdp->use_16_for_rw ? SD_MAX_XFER_BLOCKS : SD_DEF_XFER_BLOCKS;


 dev_max = min_not_zero(dev_max, sdkp->max_xfer_blocks);
 q->limits.max_dev_sectors = logical_to_sectors(sdp, dev_max);

 if (sd_validate_opt_xfer_size(sdkp, dev_max)) {
  q->limits.io_opt = logical_to_bytes(sdp, sdkp->opt_xfer_blocks);
  rw_max = logical_to_sectors(sdp, sdkp->opt_xfer_blocks);
 } else
  rw_max = min_not_zero(logical_to_sectors(sdp, dev_max),
          (sector_t)BLK_DEF_MAX_SECTORS);


 rw_max = min(rw_max, queue_max_hw_sectors(q));





 if (sdkp->first_scan ||
     q->limits.max_sectors > q->limits.max_dev_sectors ||
     q->limits.max_sectors > q->limits.max_hw_sectors)
  q->limits.max_sectors = rw_max;

 sdkp->first_scan = 0;

 set_capacity(disk, logical_to_sectors(sdp, sdkp->capacity));
 sd_config_write_same(sdkp);
 kfree(buffer);

 out:
 return 0;
}
