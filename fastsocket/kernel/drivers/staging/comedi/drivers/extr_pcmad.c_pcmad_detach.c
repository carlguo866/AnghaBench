
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; scalar_t__ irq; int minor; } ;


 int PCMAD_SIZE ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int pcmad_detach(struct comedi_device *dev)
{
 printk("comedi%d: pcmad: remove\n", dev->minor);

 if (dev->irq) {
  free_irq(dev->irq, dev);
 }
 if (dev->iobase)
  release_region(dev->iobase, PCMAD_SIZE);

 return 0;
}
