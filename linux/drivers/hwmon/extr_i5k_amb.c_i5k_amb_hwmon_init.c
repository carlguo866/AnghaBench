
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct platform_device {int dev; } ;
struct TYPE_7__ {int mode; int name; } ;
struct TYPE_8__ {TYPE_2__ attr; int show; int store; } ;
struct TYPE_6__ {int index; TYPE_3__ dev_attr; } ;
struct i5k_device_attribute {TYPE_1__ s_attr; int name; } ;
struct i5k_amb_data {int* amb_present; int num_attrs; struct i5k_device_attribute* attrs; int hwmon_dev; } ;


 int AMB_SYSFS_NAME_LEN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int KNOBS_PER_AMB ;
 int MAX_MEM_CHANNELS ;
 int PTR_ERR (int ) ;
 int REAL_MAX_AMBS_PER_CHANNEL ;
 int amb_num_from_reg (int,int) ;
 int array3_size (int,int ,int) ;
 TYPE_3__ dev_attr_name ;
 int device_create_file (int *,TYPE_3__*) ;
 int device_remove_file (int *,TYPE_3__*) ;
 scalar_t__ hweight16 (int) ;
 int hwmon_device_register (int *) ;
 int kfree (struct i5k_device_attribute*) ;
 struct i5k_device_attribute* kzalloc (int ,int ) ;
 struct i5k_amb_data* platform_get_drvdata (struct platform_device*) ;
 int show_amb_alarm ;
 int show_amb_max ;
 int show_amb_mid ;
 int show_amb_min ;
 int show_amb_temp ;
 int show_label ;
 int snprintf (int ,int ,char*,int) ;
 int store_amb_max ;
 int store_amb_mid ;
 int store_amb_min ;
 int sysfs_attr_init (TYPE_2__*) ;

__attribute__((used)) static int i5k_amb_hwmon_init(struct platform_device *pdev)
{
 int i, j, k, d = 0;
 u16 c;
 int res = 0;
 int num_ambs = 0;
 struct i5k_amb_data *data = platform_get_drvdata(pdev);



 for (i = 0; i < MAX_MEM_CHANNELS; i++)
  num_ambs += hweight16(data->amb_present[i] & 0x7fff);


 data->attrs = kzalloc(array3_size(num_ambs, KNOBS_PER_AMB,
       sizeof(*data->attrs)),
         GFP_KERNEL);
 if (!data->attrs)
  return -ENOMEM;
 data->num_attrs = 0;

 for (i = 0; i < MAX_MEM_CHANNELS; i++) {
  c = data->amb_present[i];
  for (j = 0; j < REAL_MAX_AMBS_PER_CHANNEL; j++, c >>= 1) {
   struct i5k_device_attribute *iattr;

   k = amb_num_from_reg(i, j);
   if (!(c & 0x1))
    continue;
   d++;


   iattr = data->attrs + data->num_attrs;
   snprintf(iattr->name, AMB_SYSFS_NAME_LEN,
     "temp%d_label", d);
   iattr->s_attr.dev_attr.attr.name = iattr->name;
   iattr->s_attr.dev_attr.attr.mode = 0444;
   iattr->s_attr.dev_attr.show = show_label;
   iattr->s_attr.index = k;
   sysfs_attr_init(&iattr->s_attr.dev_attr.attr);
   res = device_create_file(&pdev->dev,
       &iattr->s_attr.dev_attr);
   if (res)
    goto exit_remove;
   data->num_attrs++;


   iattr = data->attrs + data->num_attrs;
   snprintf(iattr->name, AMB_SYSFS_NAME_LEN,
     "temp%d_input", d);
   iattr->s_attr.dev_attr.attr.name = iattr->name;
   iattr->s_attr.dev_attr.attr.mode = 0444;
   iattr->s_attr.dev_attr.show = show_amb_temp;
   iattr->s_attr.index = k;
   sysfs_attr_init(&iattr->s_attr.dev_attr.attr);
   res = device_create_file(&pdev->dev,
       &iattr->s_attr.dev_attr);
   if (res)
    goto exit_remove;
   data->num_attrs++;


   iattr = data->attrs + data->num_attrs;
   snprintf(iattr->name, AMB_SYSFS_NAME_LEN,
     "temp%d_min", d);
   iattr->s_attr.dev_attr.attr.name = iattr->name;
   iattr->s_attr.dev_attr.attr.mode = 0644;
   iattr->s_attr.dev_attr.show = show_amb_min;
   iattr->s_attr.dev_attr.store = store_amb_min;
   iattr->s_attr.index = k;
   sysfs_attr_init(&iattr->s_attr.dev_attr.attr);
   res = device_create_file(&pdev->dev,
       &iattr->s_attr.dev_attr);
   if (res)
    goto exit_remove;
   data->num_attrs++;


   iattr = data->attrs + data->num_attrs;
   snprintf(iattr->name, AMB_SYSFS_NAME_LEN,
     "temp%d_mid", d);
   iattr->s_attr.dev_attr.attr.name = iattr->name;
   iattr->s_attr.dev_attr.attr.mode = 0644;
   iattr->s_attr.dev_attr.show = show_amb_mid;
   iattr->s_attr.dev_attr.store = store_amb_mid;
   iattr->s_attr.index = k;
   sysfs_attr_init(&iattr->s_attr.dev_attr.attr);
   res = device_create_file(&pdev->dev,
       &iattr->s_attr.dev_attr);
   if (res)
    goto exit_remove;
   data->num_attrs++;


   iattr = data->attrs + data->num_attrs;
   snprintf(iattr->name, AMB_SYSFS_NAME_LEN,
     "temp%d_max", d);
   iattr->s_attr.dev_attr.attr.name = iattr->name;
   iattr->s_attr.dev_attr.attr.mode = 0644;
   iattr->s_attr.dev_attr.show = show_amb_max;
   iattr->s_attr.dev_attr.store = store_amb_max;
   iattr->s_attr.index = k;
   sysfs_attr_init(&iattr->s_attr.dev_attr.attr);
   res = device_create_file(&pdev->dev,
       &iattr->s_attr.dev_attr);
   if (res)
    goto exit_remove;
   data->num_attrs++;


   iattr = data->attrs + data->num_attrs;
   snprintf(iattr->name, AMB_SYSFS_NAME_LEN,
     "temp%d_alarm", d);
   iattr->s_attr.dev_attr.attr.name = iattr->name;
   iattr->s_attr.dev_attr.attr.mode = 0444;
   iattr->s_attr.dev_attr.show = show_amb_alarm;
   iattr->s_attr.index = k;
   sysfs_attr_init(&iattr->s_attr.dev_attr.attr);
   res = device_create_file(&pdev->dev,
       &iattr->s_attr.dev_attr);
   if (res)
    goto exit_remove;
   data->num_attrs++;
  }
 }

 res = device_create_file(&pdev->dev, &dev_attr_name);
 if (res)
  goto exit_remove;

 data->hwmon_dev = hwmon_device_register(&pdev->dev);
 if (IS_ERR(data->hwmon_dev)) {
  res = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 return res;

exit_remove:
 device_remove_file(&pdev->dev, &dev_attr_name);
 for (i = 0; i < data->num_attrs; i++)
  device_remove_file(&pdev->dev, &data->attrs[i].s_attr.dev_attr);
 kfree(data->attrs);

 return res;
}
