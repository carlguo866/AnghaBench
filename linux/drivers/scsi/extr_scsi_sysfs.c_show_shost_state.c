
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int shost_state; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 char* scsi_host_state_name (int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static ssize_t
show_shost_state(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 const char *name = scsi_host_state_name(shost->shost_state);

 if (!name)
  return -EINVAL;

 return snprintf(buf, 20, "%s\n", name);
}
