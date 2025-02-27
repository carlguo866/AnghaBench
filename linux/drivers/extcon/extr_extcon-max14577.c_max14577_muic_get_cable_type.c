
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max14577_muic_info {int* status; int prev_cable_type; int prev_chg_type; int dev; } ;
typedef enum max14577_muic_cable_group { ____Placeholder_max14577_muic_cable_group } max14577_muic_cable_group ;


 int EINVAL ;


 int MAX14577_CHARGER_TYPE_NONE ;
 int MAX14577_MUIC_ADC_OPEN ;
 size_t MAX14577_MUIC_STATUS1 ;
 size_t MAX14577_MUIC_STATUS2 ;
 int STATUS1_ADC_MASK ;
 int STATUS1_ADC_SHIFT ;
 int STATUS2_CHGTYP_MASK ;
 int STATUS2_CHGTYP_SHIFT ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int max14577_muic_get_cable_type(struct max14577_muic_info *info,
  enum max14577_muic_cable_group group, bool *attached)
{
 int cable_type = 0;
 int adc;
 int chg_type;

 switch (group) {
 case 129:




  adc = info->status[MAX14577_MUIC_STATUS1] & STATUS1_ADC_MASK;
  adc >>= STATUS1_ADC_SHIFT;






  if (adc == MAX14577_MUIC_ADC_OPEN) {
   *attached = 0;

   cable_type = info->prev_cable_type;
   info->prev_cable_type = MAX14577_MUIC_ADC_OPEN;
  } else {
   *attached = 1;

   cable_type = info->prev_cable_type = adc;
  }
  break;
 case 128:




  chg_type = info->status[MAX14577_MUIC_STATUS2] &
   STATUS2_CHGTYP_MASK;
  chg_type >>= STATUS2_CHGTYP_SHIFT;

  if (chg_type == MAX14577_CHARGER_TYPE_NONE) {
   *attached = 0;

   cable_type = info->prev_chg_type;
   info->prev_chg_type = MAX14577_CHARGER_TYPE_NONE;
  } else {
   *attached = 1;






   cable_type = info->prev_chg_type = chg_type;
  }

  break;
 default:
  dev_err(info->dev, "Unknown cable group (%d)\n", group);
  cable_type = -EINVAL;
  break;
 }

 return cable_type;
}
