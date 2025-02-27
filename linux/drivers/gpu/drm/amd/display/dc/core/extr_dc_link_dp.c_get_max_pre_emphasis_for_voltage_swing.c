
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_voltage_swing { ____Placeholder_dc_voltage_swing } dc_voltage_swing ;
typedef enum dc_pre_emphasis { ____Placeholder_dc_pre_emphasis } dc_pre_emphasis ;


 int PRE_EMPHASIS_MAX_LEVEL ;
 int VOLTAGE_SWING_MAX_LEVEL ;
 int* voltage_swing_to_pre_emphasis ;

__attribute__((used)) static enum dc_pre_emphasis get_max_pre_emphasis_for_voltage_swing(
 enum dc_voltage_swing voltage)
{
 enum dc_pre_emphasis pre_emphasis;
 pre_emphasis = PRE_EMPHASIS_MAX_LEVEL;

 if (voltage <= VOLTAGE_SWING_MAX_LEVEL)
  pre_emphasis = voltage_swing_to_pre_emphasis[voltage];

 return pre_emphasis;

}
