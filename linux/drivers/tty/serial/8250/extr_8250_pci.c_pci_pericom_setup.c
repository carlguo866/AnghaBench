
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_divisor; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct serial_private {int dev; } ;
struct pciserial_board {unsigned int first_offset; int flags; int uart_offset; int reg_shift; } ;


 int FL_BASE_BARS ;
 unsigned int FL_GET_BASE (int) ;
 int FL_REGION_SZ_CAP ;
 int pci_resource_len (int ,unsigned int) ;
 int pericom_do_set_divisor ;
 int setup_port (struct serial_private*,struct uart_8250_port*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int pci_pericom_setup(struct serial_private *priv,
    const struct pciserial_board *board,
    struct uart_8250_port *port, int idx)
{
 unsigned int bar, offset = board->first_offset, maxnr;

 bar = FL_GET_BASE(board->flags);
 if (board->flags & FL_BASE_BARS)
  bar += idx;
 else
  offset += idx * board->uart_offset;


 maxnr = (pci_resource_len(priv->dev, bar) - board->first_offset) >>
  (board->reg_shift + 3);

 if (board->flags & FL_REGION_SZ_CAP && idx >= maxnr)
  return 1;

 port->port.set_divisor = pericom_do_set_divisor;

 return setup_port(priv, port, bar, offset, board->reg_shift);
}
