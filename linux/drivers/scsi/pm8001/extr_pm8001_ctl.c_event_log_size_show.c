
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct TYPE_3__ {int event_log_size; } ;
struct TYPE_4__ {TYPE_1__ pm80xx_tbl; } ;
struct pm8001_hba_info {TYPE_2__ main_cfg_tbl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t event_log_size_show(struct device *cdev,
 struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct sas_ha_struct *sha = SHOST_TO_SAS_HA(shost);
 struct pm8001_hba_info *pm8001_ha = sha->lldd_ha;

 return snprintf(buf, PAGE_SIZE, "%d\n",
  pm8001_ha->main_cfg_tbl.pm80xx_tbl.event_log_size);
}
