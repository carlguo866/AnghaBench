
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int partition_number; } ;
struct ibmvscsi_host_data {TYPE_1__ madapter_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int be32_to_cpu (int ) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct ibmvscsi_host_data* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t show_host_partition_number(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ibmvscsi_host_data *hostdata = shost_priv(shost);
 int len;

 len = snprintf(buf, PAGE_SIZE, "%d\n",
         be32_to_cpu(hostdata->madapter_info.partition_number));
 return len;
}
