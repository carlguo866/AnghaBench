
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_desc {int dummy; } ;
struct regulator_config {int regmap; } ;
struct of_dvs_setting {char* prop; int reg; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (struct of_dvs_setting const*) ;
 int BD71837_REG_BUCK4_VOLT_RUN ;
 int set_dvs_levels (struct of_dvs_setting const*,struct device_node*,struct regulator_desc const*,int ) ;

__attribute__((used)) static int buck4_set_hw_dvs_levels(struct device_node *np,
       const struct regulator_desc *desc,
       struct regulator_config *cfg)
{
 int ret, i;
 const struct of_dvs_setting dvs[] = {
  {
   .prop = "rohm,dvs-run-voltage",
   .reg = BD71837_REG_BUCK4_VOLT_RUN,
  },
 };

 for (i = 0; i < ARRAY_SIZE(dvs); i++) {
  ret = set_dvs_levels(&dvs[i], np, desc, cfg->regmap);
  if (ret)
   break;
 }
 return ret;
}
