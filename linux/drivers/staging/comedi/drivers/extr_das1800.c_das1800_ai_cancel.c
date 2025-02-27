
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das1800_private {struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {scalar_t__ chan; } ;
struct comedi_isadma {struct comedi_isadma_desc* desc; } ;
struct comedi_device {scalar_t__ iobase; struct das1800_private* private; } ;


 scalar_t__ DAS1800_CONTROL_A ;
 scalar_t__ DAS1800_CONTROL_B ;
 scalar_t__ DAS1800_STATUS ;
 int comedi_isadma_disable (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int das1800_ai_cancel(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 struct das1800_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc;
 int i;


 outb(0x0, dev->iobase + DAS1800_STATUS);
 outb(0x0, dev->iobase + DAS1800_CONTROL_B);
 outb(0x0, dev->iobase + DAS1800_CONTROL_A);

 if (dma) {
  for (i = 0; i < 2; i++) {
   desc = &dma->desc[i];
   if (desc->chan)
    comedi_isadma_disable(desc->chan);
  }
 }

 return 0;
}
