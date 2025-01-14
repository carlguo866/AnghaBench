
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxs_i2c_dev {scalar_t__ regs; int cmd_err; } ;
typedef int irqreturn_t ;


 int EIO ;
 int ENXIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MXS_I2C_CTRL1 ;
 scalar_t__ MXS_I2C_CTRL1_CLR ;
 int MXS_I2C_CTRL1_EARLY_TERM_IRQ ;
 int MXS_I2C_CTRL1_MASTER_LOSS_IRQ ;
 int MXS_I2C_CTRL1_NO_SLAVE_ACK_IRQ ;
 int MXS_I2C_CTRL1_SLAVE_IRQ ;
 int MXS_I2C_CTRL1_SLAVE_STOP_IRQ ;
 int MXS_I2C_IRQ_MASK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mxs_i2c_isr(int this_irq, void *dev_id)
{
 struct mxs_i2c_dev *i2c = dev_id;
 u32 stat = readl(i2c->regs + MXS_I2C_CTRL1) & MXS_I2C_IRQ_MASK;

 if (!stat)
  return IRQ_NONE;

 if (stat & MXS_I2C_CTRL1_NO_SLAVE_ACK_IRQ)
  i2c->cmd_err = -ENXIO;
 else if (stat & (MXS_I2C_CTRL1_EARLY_TERM_IRQ |
      MXS_I2C_CTRL1_MASTER_LOSS_IRQ |
      MXS_I2C_CTRL1_SLAVE_STOP_IRQ | MXS_I2C_CTRL1_SLAVE_IRQ))

  i2c->cmd_err = -EIO;

 writel(stat, i2c->regs + MXS_I2C_CTRL1_CLR);

 return IRQ_HANDLED;
}
