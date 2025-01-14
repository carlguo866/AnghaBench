
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ops; } ;
struct sdio_uart_port {int regs_offset; int uartclk; int index; TYPE_1__ port; struct sdio_func* func; } ;
struct sdio_func_tuple {int code; int size; int* data; struct sdio_func_tuple* next; } ;
struct sdio_func {scalar_t__ class; int dev; struct sdio_func_tuple* tuples; } ;
struct sdio_device_id {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 scalar_t__ SDIO_CLASS_GPS ;
 scalar_t__ SDIO_CLASS_UART ;
 int kfree (struct sdio_uart_port*) ;
 struct sdio_uart_port* kzalloc (int,int ) ;
 int pr_debug (char*,int ,int,...) ;
 int pr_warn (char*,int ) ;
 int sdio_func_id (struct sdio_func*) ;
 int sdio_set_drvdata (struct sdio_func*,struct sdio_uart_port*) ;
 int sdio_uart_add_port (struct sdio_uart_port*) ;
 int sdio_uart_port_ops ;
 int sdio_uart_port_remove (struct sdio_uart_port*) ;
 int sdio_uart_tty_driver ;
 int tty_port_init (TYPE_1__*) ;
 struct device* tty_port_register_device (TYPE_1__*,int ,int ,int *) ;

__attribute__((used)) static int sdio_uart_probe(struct sdio_func *func,
      const struct sdio_device_id *id)
{
 struct sdio_uart_port *port;
 int ret;

 port = kzalloc(sizeof(struct sdio_uart_port), GFP_KERNEL);
 if (!port)
  return -ENOMEM;

 if (func->class == SDIO_CLASS_UART) {
  pr_warn("%s: need info on UART class basic setup\n",
   sdio_func_id(func));
  kfree(port);
  return -ENOSYS;
 } else if (func->class == SDIO_CLASS_GPS) {




  struct sdio_func_tuple *tpl;
  for (tpl = func->tuples; tpl; tpl = tpl->next) {
   if (tpl->code != 0x91)
    continue;
   if (tpl->size < 10)
    continue;
   if (tpl->data[1] == 0)
    break;
  }
  if (!tpl) {
   pr_warn("%s: can't find tuple 0x91 subtuple 0 (SUBTPL_SIOREG) for GPS class\n",
    sdio_func_id(func));
   kfree(port);
   return -EINVAL;
  }
  pr_debug("%s: Register ID = 0x%02x, Exp ID = 0x%02x\n",
         sdio_func_id(func), tpl->data[2], tpl->data[3]);
  port->regs_offset = (tpl->data[4] << 0) |
        (tpl->data[5] << 8) |
        (tpl->data[6] << 16);
  pr_debug("%s: regs offset = 0x%x\n",
         sdio_func_id(func), port->regs_offset);
  port->uartclk = tpl->data[7] * 115200;
  if (port->uartclk == 0)
   port->uartclk = 115200;
  pr_debug("%s: clk %d baudcode %u 4800-div %u\n",
         sdio_func_id(func), port->uartclk,
         tpl->data[7], tpl->data[8] | (tpl->data[9] << 8));
 } else {
  kfree(port);
  return -EINVAL;
 }

 port->func = func;
 sdio_set_drvdata(func, port);
 tty_port_init(&port->port);
 port->port.ops = &sdio_uart_port_ops;

 ret = sdio_uart_add_port(port);
 if (ret) {
  kfree(port);
 } else {
  struct device *dev;
  dev = tty_port_register_device(&port->port,
    sdio_uart_tty_driver, port->index, &func->dev);
  if (IS_ERR(dev)) {
   sdio_uart_port_remove(port);
   ret = PTR_ERR(dev);
  }
 }

 return ret;
}
