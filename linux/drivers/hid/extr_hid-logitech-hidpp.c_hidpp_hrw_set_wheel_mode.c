
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hidpp_report {int dummy; } ;
struct hidpp_device {int dummy; } ;
typedef int params ;


 int BIT (int) ;
 int CMD_HIRES_WHEEL_SET_WHEEL_MODE ;
 int HIDPP_PAGE_HIRES_WHEEL ;
 int hidpp_root_get_feature (struct hidpp_device*,int ,int*,int*) ;
 int hidpp_send_fap_command_sync (struct hidpp_device*,int,int ,int*,int,struct hidpp_report*) ;

__attribute__((used)) static int hidpp_hrw_set_wheel_mode(struct hidpp_device *hidpp, bool invert,
 bool high_resolution, bool use_hidpp)
{
 u8 feature_index;
 u8 feature_type;
 int ret;
 u8 params[1];
 struct hidpp_report response;

 ret = hidpp_root_get_feature(hidpp, HIDPP_PAGE_HIRES_WHEEL,
         &feature_index, &feature_type);
 if (ret)
  return ret;

 params[0] = (invert ? BIT(2) : 0) |
      (high_resolution ? BIT(1) : 0) |
      (use_hidpp ? BIT(0) : 0);

 return hidpp_send_fap_command_sync(hidpp, feature_index,
        CMD_HIRES_WHEEL_SET_WHEEL_MODE,
        params, sizeof(params), &response);
}
