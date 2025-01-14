
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_i2c {scalar_t__ base; } ;


 int FIFO_AE_LVL ;
 int FIFO_AE_LVL_MASK ;
 scalar_t__ I2C_CTL ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sprd_i2c_set_empty_thld(struct sprd_i2c *i2c_dev, u32 empty_thld)
{
 u32 tmp = readl(i2c_dev->base + I2C_CTL);

 tmp &= ~FIFO_AE_LVL_MASK;
 tmp |= empty_thld << FIFO_AE_LVL;
 writel(tmp, i2c_dev->base + I2C_CTL);
}
