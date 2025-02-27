
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int exttrg_users; int IntControlReg; scalar_t__ iobase_a; } ;


 scalar_t__ AMCC_OP_REG_INTCSR ;
 int Int_DTrg ;
 scalar_t__ PCI9118_INTCTRL ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static int pci9118_exttrg_add(struct comedi_device *dev, unsigned char source)
{
 if (source > 3)
  return -1;
 devpriv->exttrg_users |= (1 << source);
 devpriv->IntControlReg |= Int_DTrg;
 outl(devpriv->IntControlReg, dev->iobase + PCI9118_INTCTRL);
 outl(inl(devpriv->iobase_a + AMCC_OP_REG_INTCSR) | 0x1f00, devpriv->iobase_a + AMCC_OP_REG_INTCSR);
 return 0;
}
