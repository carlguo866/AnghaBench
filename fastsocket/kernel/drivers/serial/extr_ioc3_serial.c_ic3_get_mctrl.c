
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct uart_port {int dummy; } ;
struct ioc3_port {TYPE_1__* ip_serial_regs; } ;
struct TYPE_2__ {int shadow; } ;


 int SHADOW_CTS ;
 int SHADOW_DCD ;
 int SHADOW_DR ;
 unsigned int TIOCM_CD ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 struct ioc3_port* get_ioc3_port (struct uart_port*) ;
 int readl (int *) ;

__attribute__((used)) static unsigned int ic3_get_mctrl(struct uart_port *the_port)
{
 struct ioc3_port *port = get_ioc3_port(the_port);
 uint32_t shadow;
 unsigned int ret = 0;

 if (!port)
  return 0;

 shadow = readl(&port->ip_serial_regs->shadow);
 if (shadow & SHADOW_DCD)
  ret |= TIOCM_CD;
 if (shadow & SHADOW_DR)
  ret |= TIOCM_DSR;
 if (shadow & SHADOW_CTS)
  ret |= TIOCM_CTS;
 return ret;
}
