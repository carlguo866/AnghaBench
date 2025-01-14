
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulong ;
struct scsi_device {int channel; TYPE_1__* host; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_7__ {TYPE_2__* dev; } ;
typedef TYPE_3__ adapter_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {scalar_t__ hostdata; } ;


 scalar_t__ IS_RAID_CH (TYPE_3__*,int ) ;
 int dev_info (int *,char*,int ) ;
 int kfree (unsigned char*) ;
 unsigned char* scsi_bios_ptable (struct block_device*) ;
 int scsi_partsize (unsigned char*,scalar_t__,int*,int*,int*) ;

__attribute__((used)) static int
megaraid_biosparam(struct scsi_device *sdev, struct block_device *bdev,
      sector_t capacity, int geom[])
{
 adapter_t *adapter;
 unsigned char *bh;
 int heads;
 int sectors;
 int cylinders;
 int rval;


 adapter = (adapter_t *)sdev->host->hostdata;

 if (IS_RAID_CH(adapter, sdev->channel)) {

   heads = 64;
   sectors = 32;
   cylinders = (ulong)capacity / (heads * sectors);





   if ((ulong)capacity >= 0x200000) {
    heads = 255;
    sectors = 63;
    cylinders = (ulong)capacity / (heads * sectors);
   }


   geom[0] = heads;
   geom[1] = sectors;
   geom[2] = cylinders;
 }
 else {
  bh = scsi_bios_ptable(bdev);

  if( bh ) {
   rval = scsi_partsize(bh, capacity,
         &geom[2], &geom[0], &geom[1]);
   kfree(bh);
   if( rval != -1 )
    return rval;
  }

  dev_info(&adapter->dev->dev,
    "invalid partition on this disk on channel %d\n",
    sdev->channel);


  heads = 64;
  sectors = 32;
  cylinders = (ulong)capacity / (heads * sectors);


  if ((ulong)capacity >= 0x200000) {
   heads = 255;
   sectors = 63;
   cylinders = (ulong)capacity / (heads * sectors);
  }


  geom[0] = heads;
  geom[1] = sectors;
  geom[2] = cylinders;
 }

 return 0;
}
