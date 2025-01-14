
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_mbox {scalar_t__ send_no_irq; } ;
struct mbox_chan {int dummy; } ;


 int EINVAL ;
 struct omap_mbox* mbox_chan_to_omap_mbox (struct mbox_chan*) ;
 int omap_mbox_chan_send (struct omap_mbox*,int ) ;
 int omap_mbox_chan_send_noirq (struct omap_mbox*,int ) ;
 int omap_mbox_message (void*) ;

__attribute__((used)) static int omap_mbox_chan_send_data(struct mbox_chan *chan, void *data)
{
 struct omap_mbox *mbox = mbox_chan_to_omap_mbox(chan);
 int ret;
 u32 msg = omap_mbox_message(data);

 if (!mbox)
  return -EINVAL;

 if (mbox->send_no_irq)
  ret = omap_mbox_chan_send_noirq(mbox, msg);
 else
  ret = omap_mbox_chan_send(mbox, msg);

 return ret;
}
