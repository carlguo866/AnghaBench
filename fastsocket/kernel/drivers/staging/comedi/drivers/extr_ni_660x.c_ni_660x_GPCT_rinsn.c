
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int ni_tio_rinsn (int ,struct comedi_insn*,unsigned int*) ;
 int subdev_to_counter (struct comedi_subdevice*) ;

__attribute__((used)) static int
ni_660x_GPCT_rinsn(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 return ni_tio_rinsn(subdev_to_counter(s), insn, data);
}
