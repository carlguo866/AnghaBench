
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned char DMM32AT_AUX_DI_DACBUSY ;
 scalar_t__ DMM32AT_AUX_DI_REG ;
 int EBUSY ;
 unsigned char inb (scalar_t__) ;

__attribute__((used)) static int dmm32at_ao_eoc(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned long context)
{
 unsigned char status;

 status = inb(dev->iobase + DMM32AT_AUX_DI_REG);
 if ((status & DMM32AT_AUX_DI_DACBUSY) == 0)
  return 0;
 return -EBUSY;
}
