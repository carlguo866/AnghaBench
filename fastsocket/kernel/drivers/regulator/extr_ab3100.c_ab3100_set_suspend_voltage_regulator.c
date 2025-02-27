
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dev; struct ab3100_regulator* reg_data; } ;
struct ab3100_regulator {scalar_t__ regreg; int ab3100; } ;


 scalar_t__ AB3100_BUCK ;
 int AB3100_BUCK_SLEEP ;
 scalar_t__ AB3100_LDO_E ;
 int AB3100_LDO_E_SLEEP ;
 int EINVAL ;
 int ab3100_get_best_voltage_index (struct regulator_dev*,int,int) ;
 int ab3100_get_register_interruptible (int ,int,int*) ;
 int ab3100_set_register_interruptible (int ,int,int) ;
 int dev_warn (int *,char*,int) ;

__attribute__((used)) static int ab3100_set_suspend_voltage_regulator(struct regulator_dev *reg,
      int uV)
{
 struct ab3100_regulator *abreg = reg->reg_data;
 u8 regval;
 int err;
 int bestindex;
 u8 targetreg;

 if (abreg->regreg == AB3100_LDO_E)
  targetreg = AB3100_LDO_E_SLEEP;
 else if (abreg->regreg == AB3100_BUCK)
  targetreg = AB3100_BUCK_SLEEP;
 else
  return -EINVAL;


 bestindex = ab3100_get_best_voltage_index(reg, uV, uV);

 err = ab3100_get_register_interruptible(abreg->ab3100,
      targetreg, &regval);
 if (err) {
  dev_warn(&reg->dev,
    "failed to get regulator register %02x\n",
    targetreg);
  return err;
 }


 regval &= ~0xE0;
 regval |= (bestindex << 5);

 err = ab3100_set_register_interruptible(abreg->ab3100,
      targetreg, regval);
 if (err)
  dev_warn(&reg->dev, "failed to set regulator register %02x\n",
   abreg->regreg);

 return err;
}
