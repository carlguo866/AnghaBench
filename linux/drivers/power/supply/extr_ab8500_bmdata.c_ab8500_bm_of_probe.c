
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct batres_vs_temp {int dummy; } ;
struct abx500_bm_data {int no_maintenance; int chg_unknown_bat; int n_btypes; TYPE_1__* bat_type; int adc_therm; } ;
struct TYPE_2__ {int charge_full_design; int termination_vol; int recharge_cap; int normal_cur_lvl; int normal_vol_lvl; struct batres_vs_temp const* batres_tbl; } ;


 int ABx500_ADC_THERM_BATTEMP ;
 size_t BATTERY_UNKNOWN ;
 int EINVAL ;
 TYPE_1__* bat_type_ext_thermistor ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 struct batres_vs_temp* temp_to_batres_tbl_9100 ;
 struct batres_vs_temp* temp_to_batres_tbl_ext_thermistor ;
 struct batres_vs_temp* temp_to_batres_tbl_thermistor ;

int ab8500_bm_of_probe(struct device *dev,
         struct device_node *np,
         struct abx500_bm_data *bm)
{
 const struct batres_vs_temp *tmp_batres_tbl;
 struct device_node *battery_node;
 const char *btech;
 int i;


 battery_node = of_parse_phandle(np, "battery", 0);
 if (!battery_node) {
  dev_err(dev, "battery node or reference missing\n");
  return -EINVAL;
 }

 btech = of_get_property(battery_node, "stericsson,battery-type", ((void*)0));
 if (!btech) {
  dev_warn(dev, "missing property battery-name/type\n");
  of_node_put(battery_node);
  return -EINVAL;
 }

 if (strncmp(btech, "LION", 4) == 0) {
  bm->no_maintenance = 1;
  bm->chg_unknown_bat = 1;
  bm->bat_type[BATTERY_UNKNOWN].charge_full_design = 2600;
  bm->bat_type[BATTERY_UNKNOWN].termination_vol = 4150;
  bm->bat_type[BATTERY_UNKNOWN].recharge_cap = 95;
  bm->bat_type[BATTERY_UNKNOWN].normal_cur_lvl = 520;
  bm->bat_type[BATTERY_UNKNOWN].normal_vol_lvl = 4200;
 }

 if (of_property_read_bool(battery_node, "thermistor-on-batctrl")) {
  if (strncmp(btech, "LION", 4) == 0)
   tmp_batres_tbl = temp_to_batres_tbl_9100;
  else
   tmp_batres_tbl = temp_to_batres_tbl_thermistor;
 } else {
  bm->n_btypes = 4;
  bm->bat_type = bat_type_ext_thermistor;
  bm->adc_therm = ABx500_ADC_THERM_BATTEMP;
  tmp_batres_tbl = temp_to_batres_tbl_ext_thermistor;
 }


 for (i = 0; i < bm->n_btypes; ++i)
  bm->bat_type[i].batres_tbl = tmp_batres_tbl;

 of_node_put(battery_node);

 return 0;
}
