
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
typedef scalar_t__ u32_t ;
typedef scalar_t__ u16_t ;
struct uip_pbuf {scalar_t__ len; int payload; struct uip_pbuf* next; } ;
struct uip_ip_addr {int addr; } ;


 scalar_t__ htons (scalar_t__) ;
 scalar_t__ uip_chksum (int ,scalar_t__) ;

u16_t uip_chksum_pseudo(struct uip_pbuf *p,struct uip_ip_addr *src,struct uip_ip_addr *dst,u8_t proto,u16_t proto_len)
{
 u32_t acc,len,rem;
 struct uip_pbuf *q;

 acc = 0;

 rem = proto_len;
 for(q=p;q!=((void*)0) && rem>0;q=q->next) {
  len = (rem>q->len)?q->len:rem;
  acc += uip_chksum(q->payload,len);
  rem -= len;
 }

 acc += (src->addr&0xffffUL);
 acc += ((src->addr>>16)&0xffffUL);
 acc += (dst->addr&0xffffUL);
 acc += ((dst->addr>>16)&0xffffUL);
 acc += (u32_t)htons(proto);
 acc += (u32_t)htons(proto_len);

 while(acc>>16) acc = (acc&0xffffUL)+(acc>>16);

 return (u16_t)~(acc&0xffffUL);
}
