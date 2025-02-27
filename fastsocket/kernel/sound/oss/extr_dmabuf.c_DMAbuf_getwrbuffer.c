
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buffparms {int mapping_flags; scalar_t__ dma_mode; int lock; scalar_t__ needs_reorg; } ;
struct audio_operations {struct dma_buffparms* dmap_out; } ;


 int DMA_MAP_MAPPED ;
 int DMAbuf_reset (int) ;
 scalar_t__ DMODE_INPUT ;
 scalar_t__ DMODE_OUTPUT ;
 int EINVAL ;
 int EIO ;
 struct audio_operations** audio_devs ;
 scalar_t__ find_output_space (int,char**,int*) ;
 int output_sleep (int,int) ;
 int reorganize_buffers (int,struct dma_buffparms*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int DMAbuf_getwrbuffer(int dev, char **buf, int *size, int dontblock)
{
 struct audio_operations *adev = audio_devs[dev];
 unsigned long flags;
 int err = -EIO;
 struct dma_buffparms *dmap = adev->dmap_out;

 if (dmap->mapping_flags & DMA_MAP_MAPPED) {

  return -EINVAL;
 }
 spin_lock_irqsave(&dmap->lock,flags);
 if (dmap->needs_reorg)
  reorganize_buffers(dev, dmap, 0);

 if (dmap->dma_mode == DMODE_INPUT) {
  spin_unlock_irqrestore(&dmap->lock,flags);
  DMAbuf_reset(dev);
  spin_lock_irqsave(&dmap->lock,flags);
 }
 dmap->dma_mode = DMODE_OUTPUT;

 while (find_output_space(dev, buf, size) <= 0) {
  spin_unlock_irqrestore(&dmap->lock,flags);
  if ((err = output_sleep(dev, dontblock)) < 0) {
   return err;
  }
  spin_lock_irqsave(&dmap->lock,flags);
 }

 spin_unlock_irqrestore(&dmap->lock,flags);
 return 0;
}
