
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_adma_chan {int lock; } ;


 int __iop_adma_slot_cleanup (struct iop_adma_chan*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
iop_adma_slot_cleanup(struct iop_adma_chan *iop_chan)
{
 spin_lock_bh(&iop_chan->lock);
 __iop_adma_slot_cleanup(iop_chan);
 spin_unlock_bh(&iop_chan->lock);
}
