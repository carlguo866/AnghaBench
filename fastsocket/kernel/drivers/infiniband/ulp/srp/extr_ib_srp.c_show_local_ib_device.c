
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct srp_target_port {TYPE_3__* srp_host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {TYPE_2__* srp_dev; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {char* name; } ;


 int class_to_shost (struct device*) ;
 struct srp_target_port* host_to_target (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_local_ib_device(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct srp_target_port *target = host_to_target(class_to_shost(dev));

 return sprintf(buf, "%s\n", target->srp_host->srp_dev->dev->name);
}
