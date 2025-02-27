
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ S526_DIO_CTRL_REG ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int inw (scalar_t__) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static int s526_dio_insn_bits(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 if (comedi_dio_update_state(s, data))
  outw(s->state, dev->iobase + S526_DIO_CTRL_REG);

 data[1] = inw(dev->iobase + S526_DIO_CTRL_REG) & 0xff;

 return insn->n;
}
