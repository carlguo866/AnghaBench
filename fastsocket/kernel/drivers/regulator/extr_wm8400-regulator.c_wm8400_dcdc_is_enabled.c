
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8400 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int WM8400_DC1_ENA ;
 int WM8400_DCDC1 ;
 scalar_t__ WM8400_DCDC1_CONTROL_1 ;
 struct wm8400* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8400_reg_read (struct wm8400*,scalar_t__) ;

__attribute__((used)) static int wm8400_dcdc_is_enabled(struct regulator_dev *dev)
{
 struct wm8400 *wm8400 = rdev_get_drvdata(dev);
 int offset = (rdev_get_id(dev) - WM8400_DCDC1) * 2;
 u16 val;

 val = wm8400_reg_read(wm8400, WM8400_DCDC1_CONTROL_1 + offset);
 return (val & WM8400_DC1_ENA) != 0;
}
