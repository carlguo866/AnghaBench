
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __raw_writeb (unsigned char,int ) ;
 int __raw_writew (unsigned short,unsigned long) ;
 int sh_edosk7705_isa_port2addr (unsigned long) ;

void sh_edosk7705_outb(unsigned char value, unsigned long port)
{
 if (port >= 0x300 && port < 0x320 && port & 0x01) {
  __raw_writew(((unsigned short)value << 8), port - 1);
  return;
 }

 __raw_writeb(value, sh_edosk7705_isa_port2addr(port));
}
