
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int calculate_baud_abs_diff (struct uart_port*,unsigned int,int) ;

__attribute__((used)) static bool
serial_omap_baud_is_mode16(struct uart_port *port, unsigned int baud)
{
 int abs_diff_13 = calculate_baud_abs_diff(port, baud, 13);
 int abs_diff_16 = calculate_baud_abs_diff(port, baud, 16);

 return (abs_diff_13 >= abs_diff_16);
}
