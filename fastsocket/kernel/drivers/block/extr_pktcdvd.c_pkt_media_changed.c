
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pktcdvd_device {TYPE_1__* bdev; } ;
struct gendisk {TYPE_2__* fops; struct pktcdvd_device* private_data; } ;
struct TYPE_4__ {int (* media_changed ) (struct gendisk*) ;} ;
struct TYPE_3__ {struct gendisk* bd_disk; } ;


 int stub1 (struct gendisk*) ;

__attribute__((used)) static int pkt_media_changed(struct gendisk *disk)
{
 struct pktcdvd_device *pd = disk->private_data;
 struct gendisk *attached_disk;

 if (!pd)
  return 0;
 if (!pd->bdev)
  return 0;
 attached_disk = pd->bdev->bd_disk;
 if (!attached_disk)
  return 0;
 return attached_disk->fops->media_changed(attached_disk);
}
