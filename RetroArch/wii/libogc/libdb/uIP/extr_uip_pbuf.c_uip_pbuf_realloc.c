
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct uip_pbuf {scalar_t__ tot_len; scalar_t__ len; scalar_t__ flags; struct uip_pbuf* next; scalar_t__ payload; } ;
typedef scalar_t__ s16_t ;


 scalar_t__ UIP_PBUF_FLAG_RAM ;
 int memr_realloc (struct uip_pbuf*,scalar_t__) ;
 int uip_pbuf_free (struct uip_pbuf*) ;

void uip_pbuf_realloc(struct uip_pbuf *p,u16_t new_len)
{
 u16_t rem_len;
 s16_t grow;
 struct uip_pbuf *q;

 if(new_len>=p->tot_len) return;

 grow = new_len - p->tot_len;
 rem_len = new_len;
 q = p;
 while(rem_len>q->len) {
  rem_len -= q->len;
  q->tot_len += grow;
  q = q->next;
 }

 if(q->flags==UIP_PBUF_FLAG_RAM && rem_len!=q->len)
  memr_realloc(q,(u8_t*)q->payload-(u8_t*)q+rem_len);

 q->len = rem_len;
 q->tot_len = q->len;

 if(q->next!=((void*)0)) uip_pbuf_free(q->next);
 q->next = ((void*)0);
}
