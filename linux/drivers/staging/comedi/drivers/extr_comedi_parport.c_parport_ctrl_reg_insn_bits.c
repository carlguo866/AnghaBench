
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int PARPORT_CTRL_BIDIR_ENA ;
 unsigned int PARPORT_CTRL_IRQ_ENA ;
 scalar_t__ PARPORT_CTRL_REG ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 unsigned int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int parport_ctrl_reg_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int ctrl;

 if (comedi_dio_update_state(s, data)) {
  ctrl = inb(dev->iobase + PARPORT_CTRL_REG);
  ctrl &= (PARPORT_CTRL_IRQ_ENA | PARPORT_CTRL_BIDIR_ENA);
  ctrl |= s->state;
  outb(ctrl, dev->iobase + PARPORT_CTRL_REG);
 }

 data[1] = s->state;

 return insn->n;
}
