
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_port {TYPE_1__* dma_dev; } ;
struct srp_target {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int unit_address; } ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct srp_target* host_to_srp_target (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,int) ;
 struct vio_port* target_to_port (struct srp_target*) ;

__attribute__((used)) static ssize_t unit_address_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct srp_target *target = host_to_srp_target(shost);
 struct vio_port *vport = target_to_port(target);
 return snprintf(buf, PAGE_SIZE, "%x\n", vport->dma_dev->unit_address);
}
