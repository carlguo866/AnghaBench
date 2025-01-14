
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct controller_priv {scalar_t__ cpld_base; } ;


 scalar_t__ CPLD_STATUS1 ;
 int CPLD_STATUS1_CAN_POWER ;
 struct controller_priv* rdev_get_drvdata (struct regulator_dev*) ;
 int readb (scalar_t__) ;

__attribute__((used)) static int can_power_is_enabled(struct regulator_dev *rdev)
{
 struct controller_priv *cd = rdev_get_drvdata(rdev);

 return !(readb(cd->cpld_base + CPLD_STATUS1) & CPLD_STATUS1_CAN_POWER);
}
