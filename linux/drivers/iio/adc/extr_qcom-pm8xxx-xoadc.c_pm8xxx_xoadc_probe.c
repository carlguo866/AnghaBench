
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xoadc_variant {int name; } ;
struct regmap {int dummy; } ;
struct pm8xxx_xoadc {int vref; int nchans; int iio_chans; struct regmap* map; int lock; int complete; struct xoadc_variant const* variant; struct device* dev; } ;
struct device {int parent; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device_node* of_node; struct device* parent; } ;
struct iio_dev {int num_channels; int channels; int * info; int modes; int name; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 struct regmap* dev_get_regmap (int ,int *) ;
 int dev_info (struct device*,char*,int ) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_regulator_get (struct device*,char*) ;
 int devm_request_threaded_irq (struct device*,int ,int ,int *,int ,int ,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct pm8xxx_xoadc* iio_priv (struct iio_dev*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 struct xoadc_variant* of_device_get_match_data (struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int pm8xxx_calibrate_device (struct pm8xxx_xoadc*) ;
 int pm8xxx_eoc_irq ;
 int pm8xxx_xoadc_info ;
 int pm8xxx_xoadc_parse_channels (struct pm8xxx_xoadc*,struct device_node*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int pm8xxx_xoadc_probe(struct platform_device *pdev)
{
 const struct xoadc_variant *variant;
 struct pm8xxx_xoadc *adc;
 struct iio_dev *indio_dev;
 struct device_node *np = pdev->dev.of_node;
 struct regmap *map;
 struct device *dev = &pdev->dev;
 int ret;

 variant = of_device_get_match_data(dev);
 if (!variant)
  return -ENODEV;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*adc));
 if (!indio_dev)
  return -ENOMEM;
 platform_set_drvdata(pdev, indio_dev);

 adc = iio_priv(indio_dev);
 adc->dev = dev;
 adc->variant = variant;
 init_completion(&adc->complete);
 mutex_init(&adc->lock);

 ret = pm8xxx_xoadc_parse_channels(adc, np);
 if (ret)
  return ret;

 map = dev_get_regmap(dev->parent, ((void*)0));
 if (!map) {
  dev_err(dev, "parent regmap unavailable.\n");
  return -ENXIO;
 }
 adc->map = map;


 adc->vref = devm_regulator_get(dev, "xoadc-ref");
 if (IS_ERR(adc->vref)) {
  dev_err(dev, "failed to get XOADC VREF regulator\n");
  return PTR_ERR(adc->vref);
 }
 ret = regulator_enable(adc->vref);
 if (ret) {
  dev_err(dev, "failed to enable XOADC VREF regulator\n");
  return ret;
 }

 ret = devm_request_threaded_irq(dev, platform_get_irq(pdev, 0),
   pm8xxx_eoc_irq, ((void*)0), 0, variant->name, indio_dev);
 if (ret) {
  dev_err(dev, "unable to request IRQ\n");
  goto out_disable_vref;
 }

 indio_dev->dev.parent = dev;
 indio_dev->dev.of_node = np;
 indio_dev->name = variant->name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &pm8xxx_xoadc_info;
 indio_dev->channels = adc->iio_chans;
 indio_dev->num_channels = adc->nchans;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto out_disable_vref;

 ret = pm8xxx_calibrate_device(adc);
 if (ret)
  goto out_unreg_device;

 dev_info(dev, "%s XOADC driver enabled\n", variant->name);

 return 0;

out_unreg_device:
 iio_device_unregister(indio_dev);
out_disable_vref:
 regulator_disable(adc->vref);

 return ret;
}
