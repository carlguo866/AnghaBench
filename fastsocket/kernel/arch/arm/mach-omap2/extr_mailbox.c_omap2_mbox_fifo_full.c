
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox2_fifo {int fifo_stat; } ;
struct omap_mbox2_priv {struct omap_mbox2_fifo tx_fifo; } ;
struct omap_mbox {scalar_t__ priv; } ;


 int mbox_read_reg (int ) ;

__attribute__((used)) static int omap2_mbox_fifo_full(struct omap_mbox *mbox)
{
 struct omap_mbox2_fifo *fifo =
  &((struct omap_mbox2_priv *)mbox->priv)->tx_fifo;
 return (mbox_read_reg(fifo->fifo_stat));
}
