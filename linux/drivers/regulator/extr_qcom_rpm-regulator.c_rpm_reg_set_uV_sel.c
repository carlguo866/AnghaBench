
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_member {scalar_t__ mask; } ;
struct rpm_reg_parts {struct request_member uV; } ;
struct regulator_dev {int dummy; } ;
struct qcom_rpm_reg {int uV; int lock; scalar_t__ is_enabled; struct rpm_reg_parts* parts; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct qcom_rpm_reg* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_list_voltage_linear_range (struct regulator_dev*,unsigned int) ;
 int rpm_reg_write (struct qcom_rpm_reg*,struct request_member const*,int) ;

__attribute__((used)) static int rpm_reg_set_uV_sel(struct regulator_dev *rdev,
         unsigned selector)
{
 struct qcom_rpm_reg *vreg = rdev_get_drvdata(rdev);
 const struct rpm_reg_parts *parts = vreg->parts;
 const struct request_member *req = &parts->uV;
 int ret = 0;
 int uV;

 if (req->mask == 0)
  return -EINVAL;

 uV = regulator_list_voltage_linear_range(rdev, selector);
 if (uV < 0)
  return uV;

 mutex_lock(&vreg->lock);
 if (vreg->is_enabled)
  ret = rpm_reg_write(vreg, req, uV);

 if (!ret)
  vreg->uV = uV;
 mutex_unlock(&vreg->lock);

 return ret;
}
