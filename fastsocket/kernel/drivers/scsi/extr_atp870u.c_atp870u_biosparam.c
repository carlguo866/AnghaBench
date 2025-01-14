
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;



__attribute__((used)) static int atp870u_biosparam(struct scsi_device *disk, struct block_device *dev,
   sector_t capacity, int *ip)
{
 int heads, sectors, cylinders;

 heads = 64;
 sectors = 32;
 cylinders = (unsigned long)capacity / (heads * sectors);
 if (cylinders > 1024) {
  heads = 255;
  sectors = 63;
  cylinders = (unsigned long)capacity / (heads * sectors);
 }
 ip[0] = heads;
 ip[1] = sectors;
 ip[2] = cylinders;

 return 0;
}
