
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {unsigned int uartclk; struct dw8250_port_data* private_data; } ;
struct dw8250_port_data {unsigned int dlf_size; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int dw8250_get_divisor(struct uart_port *p, unsigned int baud,
           unsigned int *frac)
{
 unsigned int quot, rem, base_baud = baud * 16;
 struct dw8250_port_data *d = p->private_data;

 quot = p->uartclk / base_baud;
 rem = p->uartclk % base_baud;
 *frac = DIV_ROUND_CLOSEST(rem << d->dlf_size, base_baud);

 return quot;
}
