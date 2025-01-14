
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct daqp_private {scalar_t__ stop; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; struct daqp_private* private; } ;


 scalar_t__ DAQP_DI_REG ;
 int EIO ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int daqp_di_insn_bits(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 struct daqp_private *devpriv = dev->private;

 if (devpriv->stop)
  return -EIO;

 data[0] = inb(dev->iobase + DAQP_DI_REG);

 return insn->n;
}
