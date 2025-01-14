
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adcxx {int reference; int lock; } ;
typedef int ssize_t ;


 int ERESTARTSYS ;
 struct adcxx* dev_get_drvdata (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static ssize_t adcxx_show_max(struct device *dev,
  struct device_attribute *devattr, char *buf)
{
 struct spi_device *spi = to_spi_device(dev);
 struct adcxx *adc = dev_get_drvdata(&spi->dev);
 u32 reference;

 if (mutex_lock_interruptible(&adc->lock))
  return -ERESTARTSYS;

 reference = adc->reference;

 mutex_unlock(&adc->lock);

 return sprintf(buf, "%d\n", reference);
}
