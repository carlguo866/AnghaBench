
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vctrl_data {int enabled; int ctrl_reg; } ;
struct regulator_dev {int dummy; } ;


 struct vctrl_data* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int vctrl_disable(struct regulator_dev *rdev)
{
 struct vctrl_data *vctrl = rdev_get_drvdata(rdev);
 int ret = regulator_disable(vctrl->ctrl_reg);

 if (!ret)
  vctrl->enabled = 0;

 return ret;
}
