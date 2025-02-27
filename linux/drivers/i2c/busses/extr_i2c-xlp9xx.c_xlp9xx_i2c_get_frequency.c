
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xlp9xx_i2c_dev {scalar_t__ ip_clk_hz; scalar_t__ clk_hz; } ;
struct platform_device {int dev; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 scalar_t__ XLP9XX_I2C_DEFAULT_FREQ ;
 scalar_t__ XLP9XX_I2C_HIGH_FREQ ;
 scalar_t__ XLP9XX_I2C_IP_CLK_FREQ ;
 scalar_t__ clk_get_rate (struct clk*) ;
 int dev_dbg (int *,char*,scalar_t__) ;
 int dev_warn (int *,char*,scalar_t__) ;
 int device_property_read_u32 (int *,char*,scalar_t__*) ;
 struct clk* devm_clk_get (int *,int *) ;

__attribute__((used)) static int xlp9xx_i2c_get_frequency(struct platform_device *pdev,
        struct xlp9xx_i2c_dev *priv)
{
 struct clk *clk;
 u32 freq;
 int err;

 clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(clk)) {
  priv->ip_clk_hz = XLP9XX_I2C_IP_CLK_FREQ;
  dev_dbg(&pdev->dev, "using default input frequency %u\n",
   priv->ip_clk_hz);
 } else {
  priv->ip_clk_hz = clk_get_rate(clk);
 }

 err = device_property_read_u32(&pdev->dev, "clock-frequency", &freq);
 if (err) {
  freq = XLP9XX_I2C_DEFAULT_FREQ;
  dev_dbg(&pdev->dev, "using default frequency %u\n", freq);
 } else if (freq == 0 || freq > XLP9XX_I2C_HIGH_FREQ) {
  dev_warn(&pdev->dev, "invalid frequency %u, using default\n",
    freq);
  freq = XLP9XX_I2C_DEFAULT_FREQ;
 }
 priv->clk_hz = freq;

 return 0;
}
