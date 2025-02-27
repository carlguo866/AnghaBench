
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct pp_hwmgr {scalar_t__ chip_id; } ;


 scalar_t__ CHIP_POLARIS10 ;
 scalar_t__ CHIP_TONGA ;
 int atomctrl_get_voltage_evv (struct pp_hwmgr*,int,int*) ;
 int atomctrl_get_voltage_evv_on_sclk (struct pp_hwmgr*,int ,int,int,int*) ;
 int atomctrl_get_voltage_evv_on_sclk_ai (struct pp_hwmgr*,int ,int,int,int*) ;

int phm_get_voltage_evv_on_sclk(struct pp_hwmgr *hwmgr, uint8_t voltage_type,
    uint32_t sclk, uint16_t id, uint16_t *voltage)
{
 uint32_t vol;
 int ret = 0;

 if (hwmgr->chip_id < CHIP_TONGA) {
  ret = atomctrl_get_voltage_evv(hwmgr, id, voltage);
 } else if (hwmgr->chip_id < CHIP_POLARIS10) {
  ret = atomctrl_get_voltage_evv_on_sclk(hwmgr, voltage_type, sclk, id, voltage);
  if (*voltage >= 2000 || *voltage == 0)
   *voltage = 1150;
 } else {
  ret = atomctrl_get_voltage_evv_on_sclk_ai(hwmgr, voltage_type, sclk, id, &vol);
  *voltage = (uint16_t)(vol/100);
 }
 return ret;
}
