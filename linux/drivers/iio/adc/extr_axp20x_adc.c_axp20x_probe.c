
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device_id {int name; scalar_t__ driver_data; } ;
struct device {int of_node; int parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int of_node; struct device* parent; } ;
struct iio_dev {int channels; int num_channels; int info; int name; int modes; TYPE_1__ dev; } ;
struct axp_data {scalar_t__ adc_en2; int maps; int (* adc_rate ) (struct axp20x_adc_iio*,int) ;int adc_en1_mask; int channels; int num_channels; int iio_info; } ;
struct axp20x_dev {int regmap; } ;
struct axp20x_adc_iio {int regmap; struct axp_data* data; } ;


 int AXP20X_ADC_EN1 ;
 int AXP20X_ADC_EN2 ;
 int AXP20X_ADC_EN2_MASK ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int dev_err (struct device*,char*,...) ;
 struct axp20x_dev* dev_get_drvdata (int ) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int iio_device_register (struct iio_dev*) ;
 int iio_map_array_register (struct iio_dev*,int ) ;
 int iio_map_array_unregister (struct iio_dev*) ;
 struct axp20x_adc_iio* iio_priv (struct iio_dev*) ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 struct platform_device_id* platform_get_device_id (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;
 int stub1 (struct axp20x_adc_iio*,int) ;

__attribute__((used)) static int axp20x_probe(struct platform_device *pdev)
{
 struct axp20x_adc_iio *info;
 struct iio_dev *indio_dev;
 struct axp20x_dev *axp20x_dev;
 int ret;

 axp20x_dev = dev_get_drvdata(pdev->dev.parent);

 indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*info));
 if (!indio_dev)
  return -ENOMEM;

 info = iio_priv(indio_dev);
 platform_set_drvdata(pdev, indio_dev);

 info->regmap = axp20x_dev->regmap;
 indio_dev->dev.parent = &pdev->dev;
 indio_dev->dev.of_node = pdev->dev.of_node;
 indio_dev->modes = INDIO_DIRECT_MODE;

 if (!pdev->dev.of_node) {
  const struct platform_device_id *id;

  id = platform_get_device_id(pdev);
  info->data = (struct axp_data *)id->driver_data;
 } else {
  struct device *dev = &pdev->dev;

  info->data = (struct axp_data *)of_device_get_match_data(dev);
 }

 indio_dev->name = platform_get_device_id(pdev)->name;
 indio_dev->info = info->data->iio_info;
 indio_dev->num_channels = info->data->num_channels;
 indio_dev->channels = info->data->channels;


 regmap_write(info->regmap, AXP20X_ADC_EN1, info->data->adc_en1_mask);

 if (info->data->adc_en2)

  regmap_update_bits(info->regmap, AXP20X_ADC_EN2,
       AXP20X_ADC_EN2_MASK, AXP20X_ADC_EN2_MASK);


 info->data->adc_rate(info, 100);

 ret = iio_map_array_register(indio_dev, info->data->maps);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to register IIO maps: %d\n", ret);
  goto fail_map;
 }

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "could not register the device\n");
  goto fail_register;
 }

 return 0;

fail_register:
 iio_map_array_unregister(indio_dev);

fail_map:
 regmap_write(info->regmap, AXP20X_ADC_EN1, 0);

 if (info->data->adc_en2)
  regmap_write(info->regmap, AXP20X_ADC_EN2, 0);

 return ret;
}
