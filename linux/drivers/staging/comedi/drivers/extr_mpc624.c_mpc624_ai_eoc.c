
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EBUSY ;
 unsigned char MPC624_ADBUSY ;
 scalar_t__ MPC624_ADC ;
 unsigned char inb (scalar_t__) ;

__attribute__((used)) static int mpc624_ai_eoc(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned long context)
{
 unsigned char status;

 status = inb(dev->iobase + MPC624_ADC);
 if ((status & MPC624_ADBUSY) == 0)
  return 0;
 return -EBUSY;
}
