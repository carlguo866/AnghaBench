
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct virt_dma_desc {int dummy; } ;
struct TYPE_8__ {int lock; } ;
struct stm32_dma_chan {TYPE_3__ vchan; int next_sg; TYPE_4__* desc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef scalar_t__ dma_cookie_t ;
struct TYPE_6__ {scalar_t__ cookie; } ;
struct TYPE_7__ {TYPE_1__ tx; } ;
struct TYPE_9__ {TYPE_2__ vdesc; } ;


 int DMA_COMPLETE ;
 int dma_cookie_status (struct dma_chan*,scalar_t__,struct dma_tx_state*) ;
 int dma_set_residue (struct dma_tx_state*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_dma_desc_residue (struct stm32_dma_chan*,TYPE_4__*,int ) ;
 struct stm32_dma_chan* to_stm32_dma_chan (struct dma_chan*) ;
 TYPE_4__* to_stm32_dma_desc (struct virt_dma_desc*) ;
 struct virt_dma_desc* vchan_find_desc (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static enum dma_status stm32_dma_tx_status(struct dma_chan *c,
        dma_cookie_t cookie,
        struct dma_tx_state *state)
{
 struct stm32_dma_chan *chan = to_stm32_dma_chan(c);
 struct virt_dma_desc *vdesc;
 enum dma_status status;
 unsigned long flags;
 u32 residue = 0;

 status = dma_cookie_status(c, cookie, state);
 if (status == DMA_COMPLETE || !state)
  return status;

 spin_lock_irqsave(&chan->vchan.lock, flags);
 vdesc = vchan_find_desc(&chan->vchan, cookie);
 if (chan->desc && cookie == chan->desc->vdesc.tx.cookie)
  residue = stm32_dma_desc_residue(chan, chan->desc,
       chan->next_sg);
 else if (vdesc)
  residue = stm32_dma_desc_residue(chan,
       to_stm32_dma_desc(vdesc), 0);
 dma_set_residue(state, residue);

 spin_unlock_irqrestore(&chan->vchan.lock, flags);

 return status;
}
