
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct attribute_container {int dummy; } ;
struct TYPE_7__ {struct attribute_container ac; } ;
struct TYPE_8__ {TYPE_1__ host_attrs; } ;
struct srp_internal {TYPE_2__ t; } ;
struct device {int dummy; } ;
struct Scsi_Host {TYPE_5__* transportt; } ;
struct TYPE_12__ {int class; } ;
struct TYPE_9__ {int * class; } ;
struct TYPE_10__ {TYPE_3__ ac; } ;
struct TYPE_11__ {TYPE_4__ host_attrs; } ;


 struct Scsi_Host* dev_to_shost (struct device*) ;
 int scsi_is_host_device (struct device*) ;
 TYPE_6__ srp_host_class ;
 struct srp_internal* to_srp_internal (TYPE_5__*) ;

__attribute__((used)) static int srp_host_match(struct attribute_container *cont, struct device *dev)
{
 struct Scsi_Host *shost;
 struct srp_internal *i;

 if (!scsi_is_host_device(dev))
  return 0;

 shost = dev_to_shost(dev);
 if (!shost->transportt)
  return 0;
 if (shost->transportt->host_attrs.ac.class != &srp_host_class.class)
  return 0;

 i = to_srp_internal(shost->transportt);
 return &i->t.host_attrs.ac == cont;
}
