
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct wm831x_dcdc {scalar_t__ base; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;


 scalar_t__ WM831X_DCDC_ON_CONFIG ;
 struct wm831x_dcdc* rdev_get_drvdata (struct regulator_dev*) ;
 int wm831x_dcdc_set_mode_int (struct wm831x*,scalar_t__,unsigned int) ;

__attribute__((used)) static int wm831x_dcdc_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 struct wm831x_dcdc *dcdc = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = dcdc->wm831x;
 u16 reg = dcdc->base + WM831X_DCDC_ON_CONFIG;

 return wm831x_dcdc_set_mode_int(wm831x, reg, mode);
}
