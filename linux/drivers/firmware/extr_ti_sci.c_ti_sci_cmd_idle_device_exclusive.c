
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_sci_handle {int dummy; } ;


 int MSG_DEVICE_SW_STATE_RETENTION ;
 int MSG_FLAG_DEVICE_EXCLUSIVE ;
 int ti_sci_set_device_state (struct ti_sci_handle const*,int ,int ,int ) ;

__attribute__((used)) static int ti_sci_cmd_idle_device_exclusive(const struct ti_sci_handle *handle,
         u32 id)
{
 return ti_sci_set_device_state(handle, id,
           MSG_FLAG_DEVICE_EXCLUSIVE,
           MSG_DEVICE_SW_STATE_RETENTION);
}
