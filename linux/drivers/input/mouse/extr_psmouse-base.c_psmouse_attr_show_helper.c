
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct serio {int dummy; } ;
struct psmouse_attribute {int data; int (* show ) (struct psmouse*,int ,char*) ;} ;
struct psmouse {TYPE_1__* protocol; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {struct device_attribute dattr; } ;
struct TYPE_3__ {scalar_t__ smbus_companion; } ;


 int ENOENT ;
 TYPE_2__ psmouse_attr_protocol ;
 struct psmouse* serio_get_drvdata (struct serio*) ;
 int stub1 (struct psmouse*,int ,char*) ;
 struct psmouse_attribute* to_psmouse_attr (struct device_attribute*) ;
 struct serio* to_serio_port (struct device*) ;

ssize_t psmouse_attr_show_helper(struct device *dev, struct device_attribute *devattr,
     char *buf)
{
 struct serio *serio = to_serio_port(dev);
 struct psmouse_attribute *attr = to_psmouse_attr(devattr);
 struct psmouse *psmouse = serio_get_drvdata(serio);

 if (psmouse->protocol->smbus_companion &&
   devattr != &psmouse_attr_protocol.dattr)
  return -ENOENT;

 return attr->show(psmouse, attr->data, buf);
}
