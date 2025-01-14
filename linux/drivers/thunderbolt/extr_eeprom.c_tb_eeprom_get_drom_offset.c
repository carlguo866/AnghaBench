
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct tb_switch {int cap_plug_events; } ;
struct TYPE_2__ {scalar_t__ not_present; int present; } ;
struct tb_cap_plug_events {int drom_offset; TYPE_1__ eeprom_ctl; } ;
typedef int cap ;


 int ENOSYS ;
 int ENXIO ;
 int TB_CFG_SWITCH ;
 int tb_sw_read (struct tb_switch*,struct tb_cap_plug_events*,int ,int ,int) ;
 int tb_sw_warn (struct tb_switch*,char*,...) ;

__attribute__((used)) static int tb_eeprom_get_drom_offset(struct tb_switch *sw, u16 *offset)
{
 struct tb_cap_plug_events cap;
 int res;
 if (!sw->cap_plug_events) {
  tb_sw_warn(sw, "no TB_CAP_PLUG_EVENTS, cannot read eeprom\n");
  return -ENOSYS;
 }
 res = tb_sw_read(sw, &cap, TB_CFG_SWITCH, sw->cap_plug_events,
        sizeof(cap) / 4);
 if (res)
  return res;

 if (!cap.eeprom_ctl.present || cap.eeprom_ctl.not_present) {
  tb_sw_warn(sw, "no NVM\n");
  return -ENOSYS;
 }

 if (cap.drom_offset > 0xffff) {
  tb_sw_warn(sw, "drom offset is larger than 0xffff: %#x\n",
    cap.drom_offset);
  return -ENXIO;
 }
 *offset = cap.drom_offset;
 return 0;
}
