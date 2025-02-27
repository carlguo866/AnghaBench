
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; scalar_t__ irq; scalar_t__ private; } ;
struct TYPE_4__ {int rtc_iosize; scalar_t__ rtc_iobase; scalar_t__ dma_rtc; scalar_t__ rtc_irq; int * dmapages; scalar_t__* dmabuf; scalar_t__ dma; int sub_ai; } ;
struct TYPE_3__ {int io_range; } ;


 int RTC_lock ;
 TYPE_2__* devpriv ;
 int free_dma (scalar_t__) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int free_pages (scalar_t__,int ) ;
 int pcl816_ai_cancel (struct comedi_device*,int ) ;
 int pcl816_reset (struct comedi_device*) ;
 int release_region (scalar_t__,int ) ;
 TYPE_1__* this_board ;

__attribute__((used)) static void free_resources(struct comedi_device *dev)
{

 if (dev->private) {
  pcl816_ai_cancel(dev, devpriv->sub_ai);
  pcl816_reset(dev);
  if (devpriv->dma)
   free_dma(devpriv->dma);
  if (devpriv->dmabuf[0])
   free_pages(devpriv->dmabuf[0], devpriv->dmapages[0]);
  if (devpriv->dmabuf[1])
   free_pages(devpriv->dmabuf[1], devpriv->dmapages[1]);
 }

 if (dev->irq)
  free_irq(dev->irq, dev);
 if (dev->iobase)
  release_region(dev->iobase, this_board->io_range);

}
