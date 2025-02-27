
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;
struct ltq_uart_port {int lock; } ;
typedef int irqreturn_t ;


 int ASC_IRNCR_RIR ;
 int IRQ_HANDLED ;
 scalar_t__ LTQ_ASC_IRNCR ;
 int __raw_writel (int ,scalar_t__) ;
 int lqasc_rx_chars (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ltq_uart_port* to_ltq_uart_port (struct uart_port*) ;

__attribute__((used)) static irqreturn_t
lqasc_rx_int(int irq, void *_port)
{
 unsigned long flags;
 struct uart_port *port = (struct uart_port *)_port;
 struct ltq_uart_port *ltq_port = to_ltq_uart_port(port);

 spin_lock_irqsave(&ltq_port->lock, flags);
 __raw_writel(ASC_IRNCR_RIR, port->membase + LTQ_ASC_IRNCR);
 lqasc_rx_chars(port);
 spin_unlock_irqrestore(&ltq_port->lock, flags);
 return IRQ_HANDLED;
}
