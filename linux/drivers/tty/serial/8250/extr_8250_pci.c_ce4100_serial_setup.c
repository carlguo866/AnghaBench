
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int regshift; int type; int iotype; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct serial_private {int dummy; } ;
struct pciserial_board {int reg_shift; } ;


 int PORT_XSCALE ;
 int UPF_FIXED_PORT ;
 int UPF_FIXED_TYPE ;
 int UPIO_MEM32 ;
 int setup_port (struct serial_private*,struct uart_8250_port*,int,int ,int ) ;

__attribute__((used)) static int
ce4100_serial_setup(struct serial_private *priv,
    const struct pciserial_board *board,
    struct uart_8250_port *port, int idx)
{
 int ret;

 ret = setup_port(priv, port, idx, 0, board->reg_shift);
 port->port.iotype = UPIO_MEM32;
 port->port.type = PORT_XSCALE;
 port->port.flags = (port->port.flags | UPF_FIXED_PORT | UPF_FIXED_TYPE);
 port->port.regshift = 2;

 return ret;
}
