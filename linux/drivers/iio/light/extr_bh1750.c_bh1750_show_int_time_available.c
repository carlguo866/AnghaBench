
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bh1750_data {struct bh1750_chip_info* chip_info; } ;
struct bh1750_chip_info {int mtreg_min; int mtreg_max; int mtreg_to_usec; scalar_t__ inc; } ;
typedef size_t ssize_t ;


 scalar_t__ PAGE_SIZE ;
 int dev_to_iio_dev (struct device*) ;
 struct bh1750_data* iio_priv (int ) ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static ssize_t bh1750_show_int_time_available(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 int i;
 size_t len = 0;
 struct bh1750_data *data = iio_priv(dev_to_iio_dev(dev));
 const struct bh1750_chip_info *chip_info = data->chip_info;

 for (i = chip_info->mtreg_min; i <= chip_info->mtreg_max; i += chip_info->inc)
  len += scnprintf(buf + len, PAGE_SIZE - len, "0.%06d ",
     chip_info->mtreg_to_usec * i);

 buf[len - 1] = '\n';

 return len;
}
