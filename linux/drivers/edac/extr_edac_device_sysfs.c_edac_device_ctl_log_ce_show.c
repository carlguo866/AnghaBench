
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int log_ce; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t edac_device_ctl_log_ce_show(struct edac_device_ctl_info
     *ctl_info, char *data)
{
 return sprintf(data, "%u\n", ctl_info->log_ce);
}
