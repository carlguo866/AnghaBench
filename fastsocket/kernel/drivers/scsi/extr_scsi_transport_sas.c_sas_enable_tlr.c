
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct sas_end_device {int tlr_enabled; } ;


 struct sas_end_device* sas_sdev_to_rdev (struct scsi_device*) ;
 unsigned int sas_tlr_supported (struct scsi_device*) ;

void sas_enable_tlr(struct scsi_device *sdev)
{
 unsigned int tlr_supported = 0;
 tlr_supported = sas_tlr_supported(sdev);

 if (tlr_supported) {
  struct sas_end_device *rdev = sas_sdev_to_rdev(sdev);

  rdev->tlr_enabled = 1;
 }

 return;
}
