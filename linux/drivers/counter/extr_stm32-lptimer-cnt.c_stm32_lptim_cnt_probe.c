
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stm32_lptimer {scalar_t__ has_encoder; int clk; int regmap; } ;
struct TYPE_9__ {int num_signals; int num_counts; struct stm32_lptim_cnt* priv; int signals; int * counts; int * ops; TYPE_2__* parent; void* name; } ;
struct stm32_lptim_cnt {TYPE_5__ counter; int ceiling; int clk; int regmap; TYPE_2__* dev; } ;
struct TYPE_8__ {int of_node; int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {int of_node; TYPE_2__* parent; } ;
struct iio_dev {int num_channels; int * channels; int * info; TYPE_1__ dev; void* name; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR_OR_NULL (struct stm32_lptimer*) ;
 int STM32_LPTIM_MAX_ARR ;
 struct stm32_lptimer* dev_get_drvdata (int ) ;
 void* dev_name (TYPE_2__*) ;
 int devm_counter_register (TYPE_2__*,TYPE_5__*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int devm_iio_device_register (TYPE_2__*,struct iio_dev*) ;
 struct stm32_lptim_cnt* iio_priv (struct iio_dev*) ;
 int platform_set_drvdata (struct platform_device*,struct stm32_lptim_cnt*) ;
 int stm32_lptim_cnt_channels ;
 int stm32_lptim_cnt_iio_info ;
 int stm32_lptim_cnt_ops ;
 int stm32_lptim_cnt_signals ;
 int stm32_lptim_enc_channels ;
 int stm32_lptim_enc_counts ;
 int stm32_lptim_in1_counts ;

__attribute__((used)) static int stm32_lptim_cnt_probe(struct platform_device *pdev)
{
 struct stm32_lptimer *ddata = dev_get_drvdata(pdev->dev.parent);
 struct stm32_lptim_cnt *priv;
 struct iio_dev *indio_dev;
 int ret;

 if (IS_ERR_OR_NULL(ddata))
  return -EINVAL;

 indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*priv));
 if (!indio_dev)
  return -ENOMEM;

 priv = iio_priv(indio_dev);
 priv->dev = &pdev->dev;
 priv->regmap = ddata->regmap;
 priv->clk = ddata->clk;
 priv->ceiling = STM32_LPTIM_MAX_ARR;


 indio_dev->name = dev_name(&pdev->dev);
 indio_dev->dev.parent = &pdev->dev;
 indio_dev->dev.of_node = pdev->dev.of_node;
 indio_dev->info = &stm32_lptim_cnt_iio_info;
 if (ddata->has_encoder)
  indio_dev->channels = &stm32_lptim_enc_channels;
 else
  indio_dev->channels = &stm32_lptim_cnt_channels;
 indio_dev->num_channels = 1;


 priv->counter.name = dev_name(&pdev->dev);
 priv->counter.parent = &pdev->dev;
 priv->counter.ops = &stm32_lptim_cnt_ops;
 if (ddata->has_encoder) {
  priv->counter.counts = &stm32_lptim_enc_counts;
  priv->counter.num_signals = ARRAY_SIZE(stm32_lptim_cnt_signals);
 } else {
  priv->counter.counts = &stm32_lptim_in1_counts;
  priv->counter.num_signals = 1;
 }
 priv->counter.num_counts = 1;
 priv->counter.signals = stm32_lptim_cnt_signals;
 priv->counter.priv = priv;

 platform_set_drvdata(pdev, priv);

 ret = devm_iio_device_register(&pdev->dev, indio_dev);
 if (ret)
  return ret;

 return devm_counter_register(&pdev->dev, &priv->counter);
}
