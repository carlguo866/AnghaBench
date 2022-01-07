
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; } ;


 unsigned int CRTSCTS ;
 int PORT_PTCR ;
 int PORT_PVCR ;
 unsigned short __raw_readw (int ) ;
 int __raw_writew (unsigned short,int ) ;

__attribute__((used)) static void sh7720_sci_init_pins(struct uart_port *port, unsigned int cflag)
{
 unsigned short data;

 if (cflag & CRTSCTS) {

  if (port->mapbase == 0xa4430000) {

   data = __raw_readw(PORT_PTCR);
   __raw_writew((data & 0xfc03), PORT_PTCR);
  } else if (port->mapbase == 0xa4438000) {

   data = __raw_readw(PORT_PVCR);
   __raw_writew((data & 0xfc03), PORT_PVCR);
  }
 } else {
  if (port->mapbase == 0xa4430000) {

   data = __raw_readw(PORT_PTCR);
   __raw_writew((data & 0xffc3), PORT_PTCR);
  } else if (port->mapbase == 0xa4438000) {

   data = __raw_readw(PORT_PVCR);
   __raw_writew((data & 0xffc3), PORT_PVCR);
  }
 }
}
