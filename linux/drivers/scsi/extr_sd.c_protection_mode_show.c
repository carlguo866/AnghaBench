
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int protection_type; struct scsi_device* device; } ;
struct scsi_device {int host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int T10_PI_TYPE0_PROTECTION ;
 unsigned int scsi_host_dif_capable (int ,int ) ;
 unsigned int scsi_host_dix_capable (int ,int ) ;
 int sprintf (char*,char*,...) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
protection_mode_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);
 struct scsi_device *sdp = sdkp->device;
 unsigned int dif, dix;

 dif = scsi_host_dif_capable(sdp->host, sdkp->protection_type);
 dix = scsi_host_dix_capable(sdp->host, sdkp->protection_type);

 if (!dix && scsi_host_dix_capable(sdp->host, T10_PI_TYPE0_PROTECTION)) {
  dif = 0;
  dix = 1;
 }

 if (!dif && !dix)
  return sprintf(buf, "none\n");

 return sprintf(buf, "%s%u\n", dix ? "dix" : "dif", dif);
}
