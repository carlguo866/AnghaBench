
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sk_buff {scalar_t__ len; } ;
struct device {int dummy; } ;
struct brcmf_msgbuf_pktids {size_t array_size; int direction; struct brcmf_msgbuf_pktid* array; } ;
struct TYPE_2__ {scalar_t__ counter; } ;
struct brcmf_msgbuf_pktid {TYPE_1__ allocated; struct sk_buff* skb; scalar_t__ data_offset; int physaddr; } ;


 int brcmf_err (char*,size_t,...) ;
 int dma_unmap_single (struct device*,int ,scalar_t__,int ) ;

__attribute__((used)) static struct sk_buff *
brcmf_msgbuf_get_pktid(struct device *dev, struct brcmf_msgbuf_pktids *pktids,
         u32 idx)
{
 struct brcmf_msgbuf_pktid *pktid;
 struct sk_buff *skb;

 if (idx < 0 || idx >= pktids->array_size) {
  brcmf_err("Invalid packet id %d (max %d)\n", idx,
     pktids->array_size);
  return ((void*)0);
 }
 if (pktids->array[idx].allocated.counter) {
  pktid = &pktids->array[idx];
  dma_unmap_single(dev, pktid->physaddr,
     pktid->skb->len - pktid->data_offset,
     pktids->direction);
  skb = pktid->skb;
  pktid->allocated.counter = 0;
  return skb;
 } else {
  brcmf_err("Invalid packet id %d (not in use)\n", idx);
 }

 return ((void*)0);
}
