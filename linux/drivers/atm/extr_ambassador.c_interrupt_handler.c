
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int irqreturn_t ;
typedef int amb_dev ;


 int DBG_FLOW ;
 int DBG_IRQ ;
 int DBG_WARN ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned char NUM_RX_POOLS ;
 int PRINTD (int,char*,...) ;
 int amb_mem ;
 int fill_rx_pools (int *) ;
 void* interrupt ;
 int offsetof (int ,void*) ;
 void* rd_plain (int *,int ) ;
 int rx_take (int *,unsigned char) ;
 int tx_take (int *) ;
 int wr_plain (int *,int ,int) ;

__attribute__((used)) static irqreturn_t interrupt_handler(int irq, void *dev_id) {
  amb_dev * dev = dev_id;

  PRINTD (DBG_IRQ|DBG_FLOW, "interrupt_handler: %p", dev_id);

  {
    u32 interrupt = rd_plain (dev, offsetof(amb_mem, interrupt));


    if (!interrupt) {
      PRINTD (DBG_IRQ, "irq not for me: %d", irq);
      return IRQ_NONE;
    }


    PRINTD (DBG_IRQ, "FYI: interrupt was %08x", interrupt);
    wr_plain (dev, offsetof(amb_mem, interrupt), -1);
  }

  {
    unsigned int irq_work = 0;
    unsigned char pool;
    for (pool = 0; pool < NUM_RX_POOLS; ++pool)
      while (!rx_take (dev, pool))
 ++irq_work;
    while (!tx_take (dev))
      ++irq_work;

    if (irq_work) {
      fill_rx_pools (dev);

      PRINTD (DBG_IRQ, "work done: %u", irq_work);
    } else {
      PRINTD (DBG_IRQ|DBG_WARN, "no work done");
    }
  }

  PRINTD (DBG_IRQ|DBG_FLOW, "interrupt_handler done: %p", dev_id);
  return IRQ_HANDLED;
}
