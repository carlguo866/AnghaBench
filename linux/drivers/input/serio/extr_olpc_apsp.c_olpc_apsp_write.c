
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct serio {struct olpc_apsp* port_data; } ;
struct olpc_apsp {scalar_t__ base; int dev; struct serio* padio; } ;


 unsigned char CMD_CNTR_MASK ;
 scalar_t__ COMMAND_FIFO_STATUS ;
 int ETIMEDOUT ;
 unsigned char KEYBOARD_PORT ;
 unsigned char MAX_PENDING_CMDS ;
 unsigned char PORT_SHIFT ;
 scalar_t__ SECURE_PROCESSOR_COMMAND ;
 unsigned char TOUCHPAD_PORT ;
 int dev_dbg (int ,char*,unsigned char,...) ;
 int mdelay (int) ;
 unsigned char readl (scalar_t__) ;
 int writel (unsigned char,scalar_t__) ;

__attribute__((used)) static int olpc_apsp_write(struct serio *port, unsigned char val)
{
 struct olpc_apsp *priv = port->port_data;
 unsigned int i;
 u32 which = 0;

 if (port == priv->padio)
  which = TOUCHPAD_PORT << PORT_SHIFT;
 else
  which = KEYBOARD_PORT << PORT_SHIFT;

 dev_dbg(priv->dev, "olpc_apsp_write which=%x val=%x\n", which, val);
 for (i = 0; i < 50; i++) {
  u32 sts = readl(priv->base + COMMAND_FIFO_STATUS);
  if ((sts & CMD_CNTR_MASK) < MAX_PENDING_CMDS) {
   writel(which | val,
          priv->base + SECURE_PROCESSOR_COMMAND);
   return 0;
  }

  mdelay(1);
 }

 dev_dbg(priv->dev, "olpc_apsp_write timeout, status=%x\n",
  readl(priv->base + COMMAND_FIFO_STATUS));

 return -ETIMEDOUT;
}
