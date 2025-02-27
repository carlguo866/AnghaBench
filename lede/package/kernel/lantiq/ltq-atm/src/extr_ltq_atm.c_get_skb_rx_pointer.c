
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;


 int ASSERT (int,char*,unsigned int,unsigned int,...) ;
 unsigned int KSEG0 ;
 unsigned int KSEG1 ;

__attribute__((used)) static inline struct sk_buff *get_skb_rx_pointer(unsigned int dataptr)
{
 unsigned int skb_dataptr;
 struct sk_buff *skb;

 skb_dataptr = ((dataptr - 1) << 2) | KSEG1;
 skb = *(struct sk_buff **)skb_dataptr;

 ASSERT((unsigned int)skb >= KSEG0, "invalid skb - skb = %#08x, dataptr = %#08x", (unsigned int)skb, dataptr);
 ASSERT(((unsigned int)skb->data | KSEG1) == ((dataptr << 2) | KSEG1), "invalid skb - skb = %#08x, skb->data = %#08x, dataptr = %#08x", (unsigned int)skb, (unsigned int)skb->data, dataptr);

 return skb;
}
