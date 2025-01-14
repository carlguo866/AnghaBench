
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ max_enabled_vfs; } ;
struct i40iw_handler {TYPE_1__ device; } ;
struct i40e_info {int dummy; } ;
struct i40e_client {int dummy; } ;


 scalar_t__ I40IW_MAX_PE_ENABLED_VF_COUNT ;
 struct i40iw_handler* i40iw_find_i40e_handler (struct i40e_info*) ;

__attribute__((used)) static void i40iw_vf_enable(struct i40e_info *ldev,
       struct i40e_client *client,
       u32 num_vfs)
{
 struct i40iw_handler *hdl;

 hdl = i40iw_find_i40e_handler(ldev);
 if (!hdl)
  return;

 if (num_vfs > I40IW_MAX_PE_ENABLED_VF_COUNT)
  hdl->device.max_enabled_vfs = I40IW_MAX_PE_ENABLED_VF_COUNT;
 else
  hdl->device.max_enabled_vfs = num_vfs;
}
