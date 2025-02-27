
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrs_hba {int disable_enc_msg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 struct myrs_hba* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t disable_enclosure_messages_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct myrs_hba *cs = shost_priv(shost);

 return snprintf(buf, 3, "%d\n", cs->disable_enc_msg);
}
