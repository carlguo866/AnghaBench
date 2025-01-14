
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mx25_tcq_priv {int expected_samples; int sample_count; int regs; } ;


 int MX25_ADCQ_ITEM (int,int ) ;
 int MX25_ADCQ_ITEM_7_0 ;
 int MX25_CFG_PRECHARGE ;
 int MX25_CFG_TOUCH_DETECT ;
 int MX25_CFG_X_MEASUREMENT ;
 int MX25_CFG_Y_MEASUREMENT ;
 int imx25_setup_queue_cfgs (struct mx25_tcq_priv*,unsigned int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int imx25_setup_queue_4wire(struct mx25_tcq_priv *priv,
       unsigned settling_cnt, int *items)
{
 imx25_setup_queue_cfgs(priv, settling_cnt);


 regmap_write(priv->regs, MX25_ADCQ_ITEM_7_0,
       MX25_ADCQ_ITEM(0, MX25_CFG_PRECHARGE) |
       MX25_ADCQ_ITEM(1, MX25_CFG_TOUCH_DETECT) |
       MX25_ADCQ_ITEM(2, MX25_CFG_X_MEASUREMENT) |
       MX25_ADCQ_ITEM(3, MX25_CFG_Y_MEASUREMENT) |
       MX25_ADCQ_ITEM(4, MX25_CFG_PRECHARGE) |
       MX25_ADCQ_ITEM(5, MX25_CFG_TOUCH_DETECT));





 priv->expected_samples = priv->sample_count * 2 + 2;
 *items = 6;

 return 0;
}
