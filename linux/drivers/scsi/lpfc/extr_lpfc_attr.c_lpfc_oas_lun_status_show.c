
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int cfg_oas_flags; int cfg_oas_lun_status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int EFAULT ;
 int OAS_LUN_VALID ;
 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t
lpfc_oas_lun_status_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;

 if (!(phba->cfg_oas_flags & OAS_LUN_VALID))
  return -EFAULT;

 return scnprintf(buf, PAGE_SIZE, "%d\n", phba->cfg_oas_lun_status);
}
