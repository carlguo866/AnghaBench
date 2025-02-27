
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int iobase; int irq; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct irq_data {int dummy; } ;
struct fintek_8250 {int base_port; int key; int index; } ;


 int ARRAY_SIZE (int const*) ;
 int ENODEV ;
 int IO_ADDR1 ;
 int IO_ADDR2 ;
 int LDN ;
 scalar_t__ fintek_8250_check_id (struct fintek_8250*) ;
 scalar_t__ fintek_8250_enter_key (int const,int const) ;
 int fintek_8250_exit_key (int const) ;
 scalar_t__ fintek_8250_get_ldn_range (struct fintek_8250*,int*,int*) ;
 int fintek_8250_goto_highspeed (struct uart_8250_port*,struct fintek_8250*) ;
 int fintek_8250_set_irq_mode (struct fintek_8250*,int) ;
 int fintek_8250_set_max_fifo (struct fintek_8250*) ;
 struct irq_data* irq_get_irq_data (int ) ;
 int irqd_is_level_type (struct irq_data*) ;
 int sio_read_reg (struct fintek_8250*,int ) ;
 int sio_write_reg (struct fintek_8250*,int ,int) ;

__attribute__((used)) static int probe_setup_port(struct fintek_8250 *pdata,
     struct uart_8250_port *uart)
{
 static const u16 addr[] = {0x4e, 0x2e};
 static const u8 keys[] = {0x77, 0xa0, 0x87, 0x67};
 struct irq_data *irq_data;
 bool level_mode = 0;
 int i, j, k, min, max;

 for (i = 0; i < ARRAY_SIZE(addr); i++) {
  for (j = 0; j < ARRAY_SIZE(keys); j++) {
   pdata->base_port = addr[i];
   pdata->key = keys[j];

   if (fintek_8250_enter_key(addr[i], keys[j]))
    continue;
   if (fintek_8250_check_id(pdata) ||
       fintek_8250_get_ldn_range(pdata, &min, &max)) {
    fintek_8250_exit_key(addr[i]);
    continue;
   }

   for (k = min; k < max; k++) {
    u16 aux;

    sio_write_reg(pdata, LDN, k);
    aux = sio_read_reg(pdata, IO_ADDR1);
    aux |= sio_read_reg(pdata, IO_ADDR2) << 8;
    if (aux != uart->port.iobase)
     continue;

    pdata->index = k;

    irq_data = irq_get_irq_data(uart->port.irq);
    if (irq_data)
     level_mode =
      irqd_is_level_type(irq_data);

    fintek_8250_set_irq_mode(pdata, level_mode);
    fintek_8250_set_max_fifo(pdata);
    fintek_8250_goto_highspeed(uart, pdata);

    fintek_8250_exit_key(addr[i]);

    return 0;
   }

   fintek_8250_exit_key(addr[i]);
  }
 }

 return -ENODEV;
}
