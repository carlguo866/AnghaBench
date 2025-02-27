
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct cc10001_adc_device {int reg; int adc_clk; } ;


 int cc10001_adc_power_down (struct cc10001_adc_device*) ;
 int clk_disable_unprepare (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct cc10001_adc_device* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int cc10001_adc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct cc10001_adc_device *adc_dev = iio_priv(indio_dev);

 cc10001_adc_power_down(adc_dev);
 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);
 clk_disable_unprepare(adc_dev->adc_clk);
 regulator_disable(adc_dev->reg);

 return 0;
}
