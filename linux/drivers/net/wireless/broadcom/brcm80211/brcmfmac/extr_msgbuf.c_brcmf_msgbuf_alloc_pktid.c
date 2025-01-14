
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct device {int dummy; } ;
struct brcmf_msgbuf_pktids {scalar_t__ last_allocated_idx; scalar_t__ array_size; int direction; struct brcmf_msgbuf_pktid* array; } ;
struct TYPE_2__ {scalar_t__ counter; } ;
struct brcmf_msgbuf_pktid {struct sk_buff* skb; int physaddr; scalar_t__ data_offset; TYPE_1__ allocated; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 scalar_t__ atomic_cmpxchg (TYPE_1__*,int ,int) ;
 int brcmf_err (char*) ;
 int dma_map_single (struct device*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;

__attribute__((used)) static int
brcmf_msgbuf_alloc_pktid(struct device *dev,
    struct brcmf_msgbuf_pktids *pktids,
    struct sk_buff *skb, u16 data_offset,
    dma_addr_t *physaddr, u32 *idx)
{
 struct brcmf_msgbuf_pktid *array;
 u32 count;

 array = pktids->array;

 *physaddr = dma_map_single(dev, skb->data + data_offset,
       skb->len - data_offset, pktids->direction);

 if (dma_mapping_error(dev, *physaddr)) {
  brcmf_err("dma_map_single failed !!\n");
  return -ENOMEM;
 }

 *idx = pktids->last_allocated_idx;

 count = 0;
 do {
  (*idx)++;
  if (*idx == pktids->array_size)
   *idx = 0;
  if (array[*idx].allocated.counter == 0)
   if (atomic_cmpxchg(&array[*idx].allocated, 0, 1) == 0)
    break;
  count++;
 } while (count < pktids->array_size);

 if (count == pktids->array_size)
  return -ENOMEM;

 array[*idx].data_offset = data_offset;
 array[*idx].physaddr = *physaddr;
 array[*idx].skb = skb;

 pktids->last_allocated_idx = *idx;

 return 0;
}
