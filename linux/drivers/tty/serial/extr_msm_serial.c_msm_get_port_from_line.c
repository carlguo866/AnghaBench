
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {struct uart_port uart; } ;


 TYPE_1__* msm_uart_ports ;

__attribute__((used)) static inline struct uart_port *msm_get_port_from_line(unsigned int line)
{
 return &msm_uart_ports[line].uart;
}
