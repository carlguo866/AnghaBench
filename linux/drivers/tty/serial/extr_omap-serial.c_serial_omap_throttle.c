
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct uart_omap_port {int ier; int dev; TYPE_1__ port; } ;


 int UART_IER ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int serial_out (struct uart_omap_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_omap_port* to_uart_omap_port (struct uart_port*) ;

__attribute__((used)) static void serial_omap_throttle(struct uart_port *port)
{
 struct uart_omap_port *up = to_uart_omap_port(port);
 unsigned long flags;

 pm_runtime_get_sync(up->dev);
 spin_lock_irqsave(&up->port.lock, flags);
 up->ier &= ~(UART_IER_RLSI | UART_IER_RDI);
 serial_out(up, UART_IER, up->ier);
 spin_unlock_irqrestore(&up->port.lock, flags);
 pm_runtime_mark_last_busy(up->dev);
 pm_runtime_put_autosuspend(up->dev);
}
