
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int pc236_intr_update (struct comedi_device*,int) ;

__attribute__((used)) static int pc236_intr_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 pc236_intr_update(dev, 1);

 return 0;
}
