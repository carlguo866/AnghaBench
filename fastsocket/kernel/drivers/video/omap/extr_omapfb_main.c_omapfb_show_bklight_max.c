
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct omapfb_device {TYPE_1__* panel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int (* get_bklight_max ) (TYPE_1__*) ;scalar_t__ get_bklight_level; } ;


 int ENODEV ;
 int PAGE_SIZE ;
 struct omapfb_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

__attribute__((used)) static ssize_t omapfb_show_bklight_max(struct device *dev,
           struct device_attribute *attr, char *buf)
{
 struct omapfb_device *fbdev = dev_get_drvdata(dev);
 int r;

 if (fbdev->panel->get_bklight_level) {
  r = snprintf(buf, PAGE_SIZE, "%d\n",
        fbdev->panel->get_bklight_max(fbdev->panel));
 } else
  r = -ENODEV;
 return r;
}
