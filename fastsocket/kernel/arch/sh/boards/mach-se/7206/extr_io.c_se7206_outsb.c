
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int * port2adr (unsigned long) ;

void se7206_outsb(unsigned long port, const void *addr, unsigned long count)
{
 volatile __u16 *p = port2adr(port);
 const __u8 *ap = addr;

 while (count--)
  *p = *ap++;
}
