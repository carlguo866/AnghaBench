
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int ulp_supported; } ;
struct beiscsi_hba {TYPE_1__ fw_config; } ;
struct Scsi_Host {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int BEISCSI_ULP_AVLBL_CID (struct beiscsi_hba*,scalar_t__) ;
 scalar_t__ BEISCSI_ULP_COUNT ;
 scalar_t__ PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 scalar_t__ snprintf (char*,scalar_t__,char*,scalar_t__,int) ;
 scalar_t__ test_bit (scalar_t__,void*) ;

ssize_t
beiscsi_free_session_disp(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 uint16_t ulp_num, len = 0;

 for (ulp_num = 0; ulp_num < BEISCSI_ULP_COUNT; ulp_num++) {
  if (test_bit(ulp_num, (void *)&phba->fw_config.ulp_supported))
   len += snprintf(buf+len, PAGE_SIZE - len,
     "ULP%d : %d\n", ulp_num,
     BEISCSI_ULP_AVLBL_CID(phba, ulp_num));
  else
   len += snprintf(buf+len, PAGE_SIZE - len,
     "ULP%d : %d\n", ulp_num, 0);
 }

 return len;
}
