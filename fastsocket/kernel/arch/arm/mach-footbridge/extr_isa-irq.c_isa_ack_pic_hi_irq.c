
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIC_HI ;
 int PIC_LO ;
 int PIC_MASK_HI ;
 unsigned int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static void isa_ack_pic_hi_irq(unsigned int irq)
{
 unsigned int mask = 1 << (irq & 7);

 outb(inb(PIC_MASK_HI) | mask, PIC_MASK_HI);
 outb(0x62, PIC_LO);
 outb(0x20, PIC_HI);
}
