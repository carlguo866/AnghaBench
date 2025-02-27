
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sht15_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct sht15_data* dev_get_drvdata (struct device*) ;
 int sht15_calc_temp (struct sht15_data*) ;
 int sht15_update_measurements (struct sht15_data*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t sht15_temp_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 int ret;
 struct sht15_data *data = dev_get_drvdata(dev);


 ret = sht15_update_measurements(data);

 return ret ? ret : sprintf(buf, "%d\n",
       sht15_calc_temp(data));
}
