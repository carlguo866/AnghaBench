
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct net_device {unsigned long mem_start; } ;
struct TYPE_2__ {unsigned long rmem_end; unsigned long rmem_start; } ;


 int WD_START_PG ;
 TYPE_1__ ei_status ;
 int word_memcpy_fromcard (scalar_t__,unsigned long,int) ;

__attribute__((used)) static void slow_sane_block_input(struct net_device *dev, int count,
      struct sk_buff *skb, int ring_offset)
{
 unsigned long xfer_base = ring_offset - (WD_START_PG<<8);
 unsigned long xfer_start = xfer_base+dev->mem_start;

 if (xfer_start + count > ei_status.rmem_end) {

  int semi_count = ei_status.rmem_end - xfer_start;
  word_memcpy_fromcard(skb->data, dev->mem_start + xfer_base,
         semi_count);
  count -= semi_count;
  word_memcpy_fromcard(skb->data + semi_count,
         ei_status.rmem_start, count);
 } else {
  word_memcpy_fromcard(skb->data, dev->mem_start + xfer_base,
         count);
 }
}
