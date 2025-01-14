
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asd_ha_struct {scalar_t__ bios_status; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ err_code; char* reason; } ;


 scalar_t__ FLASH_IN_PROGRESS ;
 scalar_t__ FLASH_OK ;
 int PAGE_SIZE ;
 struct asd_ha_struct* dev_to_asd_ha (struct device*) ;
 TYPE_1__* flash_error_table ;
 int snprintf (char*,int ,char*,scalar_t__,char*) ;

__attribute__((used)) static ssize_t asd_show_update_bios(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 int i;
 struct asd_ha_struct *asd_ha = dev_to_asd_ha(dev);

 for (i = 0; flash_error_table[i].err_code != 0; i++) {
  if (flash_error_table[i].err_code == asd_ha->bios_status)
   break;
 }
 if (asd_ha->bios_status != FLASH_IN_PROGRESS)
  asd_ha->bios_status = FLASH_OK;

 return snprintf(buf, PAGE_SIZE, "status=%x %s\n",
   flash_error_table[i].err_code,
   flash_error_table[i].reason);
}
