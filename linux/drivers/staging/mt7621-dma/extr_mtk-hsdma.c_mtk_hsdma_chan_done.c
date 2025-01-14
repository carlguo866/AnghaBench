
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int node; } ;
struct mtk_hsdma_desc {scalar_t__ num_sgs; TYPE_3__ vdesc; } ;
struct TYPE_5__ {int lock; } ;
struct mtk_hsdma_chan {scalar_t__ next_sg; TYPE_2__ vchan; int id; struct mtk_hsdma_desc* desc; } ;
struct TYPE_4__ {int dev; } ;
struct mtk_hsdam_engine {int chan_issued; TYPE_1__ ddev; } ;


 int dev_dbg (int ,char*) ;
 int gdma_next_desc (struct mtk_hsdma_chan*) ;
 scalar_t__ likely (struct mtk_hsdma_desc*) ;
 int list_del (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vchan_cookie_complete (TYPE_3__*) ;

__attribute__((used)) static void mtk_hsdma_chan_done(struct mtk_hsdam_engine *hsdma,
    struct mtk_hsdma_chan *chan)
{
 struct mtk_hsdma_desc *desc;
 int chan_issued;

 chan_issued = 0;
 spin_lock_bh(&chan->vchan.lock);
 desc = chan->desc;
 if (likely(desc)) {
  if (chan->next_sg == desc->num_sgs) {
   list_del(&desc->vdesc.node);
   vchan_cookie_complete(&desc->vdesc);
   chan_issued = gdma_next_desc(chan);
  }
 } else {
  dev_dbg(hsdma->ddev.dev, "no desc to complete\n");
 }

 if (chan_issued)
  set_bit(chan->id, &hsdma->chan_issued);
 spin_unlock_bh(&chan->vchan.lock);
}
