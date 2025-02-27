
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shtc1_data {int temperature; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct shtc1_data*) ;
 int PTR_ERR (struct shtc1_data*) ;
 struct shtc1_data* shtc1_update_client (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t temp1_input_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 struct shtc1_data *data = shtc1_update_client(dev);
 if (IS_ERR(data))
  return PTR_ERR(data);

 return sprintf(buf, "%d\n", data->temperature);
}
