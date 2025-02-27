
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w1_slave {int dev; } ;
struct TYPE_2__ {int * parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int PLATFORM_DEVID_AUTO ;
 int dev_set_drvdata (int *,struct platform_device*) ;
 int platform_device_add (struct platform_device*) ;
 struct platform_device* platform_device_alloc (char*,int ) ;
 int platform_device_put (struct platform_device*) ;

__attribute__((used)) static int w1_ds2781_add_slave(struct w1_slave *sl)
{
 int ret;
 struct platform_device *pdev;

 pdev = platform_device_alloc("ds2781-battery", PLATFORM_DEVID_AUTO);
 if (!pdev)
  return -ENOMEM;
 pdev->dev.parent = &sl->dev;

 ret = platform_device_add(pdev);
 if (ret)
  goto pdev_add_failed;

 dev_set_drvdata(&sl->dev, pdev);

 return 0;

pdev_add_failed:
 platform_device_put(pdev);

 return ret;
}
