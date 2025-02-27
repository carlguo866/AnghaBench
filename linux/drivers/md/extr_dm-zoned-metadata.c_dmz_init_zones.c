
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int zone_bitmap_size; int zone_nr_bitmap_blocks; struct dm_zone* zones; struct dmz_dev* dev; } ;
struct dmz_dev {int zone_nr_blocks; unsigned int nr_zones; scalar_t__ capacity; scalar_t__ zone_nr_sectors; int bdev; } ;
struct dm_zone {int dummy; } ;
struct blk_zone {int dummy; } ;
typedef scalar_t__ sector_t ;


 int DMZ_BLOCK_SHIFT ;
 unsigned int DMZ_REPORT_NR_ZONES ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int blkdev_report_zones (int ,scalar_t__,struct blk_zone*,unsigned int*) ;
 int dmz_dev_err (struct dmz_dev*,char*,...) ;
 int dmz_dev_info (struct dmz_dev*,char*,int) ;
 int dmz_drop_zones (struct dmz_metadata*) ;
 int dmz_init_zone (struct dmz_metadata*,struct dm_zone*,struct blk_zone*) ;
 void* kcalloc (unsigned int,int,int ) ;
 int kfree (struct blk_zone*) ;

__attribute__((used)) static int dmz_init_zones(struct dmz_metadata *zmd)
{
 struct dmz_dev *dev = zmd->dev;
 struct dm_zone *zone;
 struct blk_zone *blkz;
 unsigned int nr_blkz;
 sector_t sector = 0;
 int i, ret = 0;


 zmd->zone_bitmap_size = dev->zone_nr_blocks >> 3;
 zmd->zone_nr_bitmap_blocks = zmd->zone_bitmap_size >> DMZ_BLOCK_SHIFT;


 zmd->zones = kcalloc(dev->nr_zones, sizeof(struct dm_zone), GFP_KERNEL);
 if (!zmd->zones)
  return -ENOMEM;

 dmz_dev_info(dev, "Using %zu B for zone information",
       sizeof(struct dm_zone) * dev->nr_zones);


 nr_blkz = DMZ_REPORT_NR_ZONES;
 blkz = kcalloc(nr_blkz, sizeof(struct blk_zone), GFP_KERNEL);
 if (!blkz) {
  ret = -ENOMEM;
  goto out;
 }







 zone = zmd->zones;
 while (sector < dev->capacity) {

  nr_blkz = DMZ_REPORT_NR_ZONES;
  ret = blkdev_report_zones(dev->bdev, sector, blkz, &nr_blkz);
  if (ret) {
   dmz_dev_err(dev, "Report zones failed %d", ret);
   goto out;
  }

  if (!nr_blkz)
   break;


  for (i = 0; i < nr_blkz; i++) {
   ret = dmz_init_zone(zmd, zone, &blkz[i]);
   if (ret)
    goto out;
   sector += dev->zone_nr_sectors;
   zone++;
  }
 }


 if (sector < dev->capacity) {
  dmz_dev_err(dev, "Failed to get correct zone information");
  ret = -ENXIO;
 }
out:
 kfree(blkz);
 if (ret)
  dmz_drop_zones(zmd);

 return ret;
}
