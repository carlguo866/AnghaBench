
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {TYPE_1__* device; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int allow_restart; } ;


 int sprintf (char*,char*,int) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
allow_restart_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);

 return sprintf(buf, "%u\n", sdkp->device->allow_restart);
}
