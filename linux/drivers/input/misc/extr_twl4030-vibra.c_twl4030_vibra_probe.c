
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct vibra_info {TYPE_3__* input_dev; int play_work; int coexist; TYPE_7__* dev; } ;
struct twl4030_vibra_data {int dummy; } ;
struct TYPE_16__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_7__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_14__ {int version; } ;
struct TYPE_15__ {char* name; int ffbit; int close; TYPE_2__ id; } ;
struct TYPE_13__ {struct device_node* of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 int FF_RUMBLE ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int __set_bit (int ,int ) ;
 int dev_dbg (TYPE_7__*,char*) ;
 int dev_err (TYPE_7__*,char*) ;
 struct twl4030_vibra_data* dev_get_platdata (TYPE_7__*) ;
 TYPE_3__* devm_input_allocate_device (TYPE_7__*) ;
 struct vibra_info* devm_kzalloc (TYPE_7__*,int,int ) ;
 int input_ff_create_memless (TYPE_3__*,int *,int ) ;
 int input_ff_destroy (TYPE_3__*) ;
 int input_register_device (TYPE_3__*) ;
 int input_set_drvdata (TYPE_3__*,struct vibra_info*) ;
 int platform_set_drvdata (struct platform_device*,struct vibra_info*) ;
 int twl4030_vibra_check_coexist (struct twl4030_vibra_data*,struct device_node*) ;
 int twl4030_vibra_close ;
 int vibra_disable_leds () ;
 int vibra_play ;
 int vibra_play_work ;

__attribute__((used)) static int twl4030_vibra_probe(struct platform_device *pdev)
{
 struct twl4030_vibra_data *pdata = dev_get_platdata(&pdev->dev);
 struct device_node *twl4030_core_node = pdev->dev.parent->of_node;
 struct vibra_info *info;
 int ret;

 if (!pdata && !twl4030_core_node) {
  dev_dbg(&pdev->dev, "platform_data not available\n");
  return -EINVAL;
 }

 info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->dev = &pdev->dev;
 info->coexist = twl4030_vibra_check_coexist(pdata, twl4030_core_node);
 INIT_WORK(&info->play_work, vibra_play_work);

 info->input_dev = devm_input_allocate_device(&pdev->dev);
 if (info->input_dev == ((void*)0)) {
  dev_err(&pdev->dev, "couldn't allocate input device\n");
  return -ENOMEM;
 }

 input_set_drvdata(info->input_dev, info);

 info->input_dev->name = "twl4030:vibrator";
 info->input_dev->id.version = 1;
 info->input_dev->close = twl4030_vibra_close;
 __set_bit(FF_RUMBLE, info->input_dev->ffbit);

 ret = input_ff_create_memless(info->input_dev, ((void*)0), vibra_play);
 if (ret < 0) {
  dev_dbg(&pdev->dev, "couldn't register vibrator to FF\n");
  return ret;
 }

 ret = input_register_device(info->input_dev);
 if (ret < 0) {
  dev_dbg(&pdev->dev, "couldn't register input device\n");
  goto err_iff;
 }

 vibra_disable_leds();

 platform_set_drvdata(pdev, info);
 return 0;

err_iff:
 input_ff_destroy(info->input_dev);
 return ret;
}
