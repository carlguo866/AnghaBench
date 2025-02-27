
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_14__ {int kobj; } ;
struct i2c_client {TYPE_11__ dev; } ;
struct gl520_data {int hwmon_dev; scalar_t__ two_temps; int update_lock; } ;
struct TYPE_23__ {int dev_attr; } ;
struct TYPE_22__ {int dev_attr; } ;
struct TYPE_21__ {int dev_attr; } ;
struct TYPE_20__ {int dev_attr; } ;
struct TYPE_19__ {int dev_attr; } ;
struct TYPE_18__ {int dev_attr; } ;
struct TYPE_17__ {int dev_attr; } ;
struct TYPE_16__ {int dev_attr; } ;
struct TYPE_15__ {int dev_attr; } ;
struct TYPE_13__ {int dev_attr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int device_create_file (TYPE_11__*,int *) ;
 int gl520_group ;
 int gl520_group_opt ;
 int gl520_init_client (struct i2c_client*) ;
 int hwmon_device_register (TYPE_11__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct gl520_data*) ;
 int kfree (struct gl520_data*) ;
 struct gl520_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 TYPE_10__ sensor_dev_attr_in4_alarm ;
 TYPE_9__ sensor_dev_attr_in4_beep ;
 TYPE_8__ sensor_dev_attr_in4_input ;
 TYPE_7__ sensor_dev_attr_in4_max ;
 TYPE_6__ sensor_dev_attr_in4_min ;
 TYPE_5__ sensor_dev_attr_temp2_alarm ;
 TYPE_4__ sensor_dev_attr_temp2_beep ;
 TYPE_3__ sensor_dev_attr_temp2_input ;
 TYPE_2__ sensor_dev_attr_temp2_max ;
 TYPE_1__ sensor_dev_attr_temp2_max_hyst ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int gl520_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct gl520_data *data;
 int err;

 data = kzalloc(sizeof(struct gl520_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);


 gl520_init_client(client);


 if ((err = sysfs_create_group(&client->dev.kobj, &gl520_group)))
  goto exit_free;

 if (data->two_temps) {
  if ((err = device_create_file(&client->dev,
    &sensor_dev_attr_temp2_input.dev_attr))
   || (err = device_create_file(&client->dev,
    &sensor_dev_attr_temp2_max.dev_attr))
   || (err = device_create_file(&client->dev,
    &sensor_dev_attr_temp2_max_hyst.dev_attr))
   || (err = device_create_file(&client->dev,
    &sensor_dev_attr_temp2_alarm.dev_attr))
   || (err = device_create_file(&client->dev,
    &sensor_dev_attr_temp2_beep.dev_attr)))
   goto exit_remove_files;
 } else {
  if ((err = device_create_file(&client->dev,
    &sensor_dev_attr_in4_input.dev_attr))
   || (err = device_create_file(&client->dev,
    &sensor_dev_attr_in4_min.dev_attr))
   || (err = device_create_file(&client->dev,
    &sensor_dev_attr_in4_max.dev_attr))
   || (err = device_create_file(&client->dev,
    &sensor_dev_attr_in4_alarm.dev_attr))
   || (err = device_create_file(&client->dev,
    &sensor_dev_attr_in4_beep.dev_attr)))
   goto exit_remove_files;
 }


 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_files;
 }

 return 0;

exit_remove_files:
 sysfs_remove_group(&client->dev.kobj, &gl520_group);
 sysfs_remove_group(&client->dev.kobj, &gl520_group_opt);
exit_free:
 kfree(data);
exit:
 return err;
}
