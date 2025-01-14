
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_mpp_ctrl_data {int dummy; } ;


 int GLOBAL_CONFIG_1 ;
 int GLOBAL_CONFIG_2 ;
 unsigned int TWSI_ENABLE_OPTION1 ;
 unsigned int TWSI_ENABLE_OPTION2 ;
 unsigned int TWSI_ENABLE_OPTION3 ;
 int gconfmap ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int dove_twsi_ctrl_set(struct mvebu_mpp_ctrl_data *data, unsigned pid,
         unsigned long config)
{
 unsigned int gcfg1 = 0;
 unsigned int gcfg2 = 0;

 switch (config) {
 case 1:
  gcfg1 = TWSI_ENABLE_OPTION1;
  break;
 case 2:
  gcfg2 = TWSI_ENABLE_OPTION2;
  break;
 case 3:
  gcfg2 = TWSI_ENABLE_OPTION3;
  break;
 }

 regmap_update_bits(gconfmap, GLOBAL_CONFIG_1,
      TWSI_ENABLE_OPTION1,
      gcfg1);
 regmap_update_bits(gconfmap, GLOBAL_CONFIG_2,
      TWSI_ENABLE_OPTION2 | TWSI_ENABLE_OPTION3,
      gcfg2);

 return 0;
}
