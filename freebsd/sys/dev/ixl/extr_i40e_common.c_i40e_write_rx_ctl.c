
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int api_maj_ver; int api_min_ver; scalar_t__ asq_last_status; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_2__ aq; TYPE_1__ mac; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 scalar_t__ I40E_AQ_RC_EAGAIN ;
 scalar_t__ I40E_MAC_X722 ;
 int I40E_SUCCESS ;
 int i40e_aq_rx_ctl_write_register (struct i40e_hw*,int ,int ,int *) ;
 int i40e_msec_delay (int) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

void i40e_write_rx_ctl(struct i40e_hw *hw, u32 reg_addr, u32 reg_val)
{
 enum i40e_status_code status = I40E_SUCCESS;
 bool use_register;
 int retry = 5;

 use_register = (((hw->aq.api_maj_ver == 1) &&
   (hw->aq.api_min_ver < 5)) ||
   (hw->mac.type == I40E_MAC_X722));
 if (!use_register) {
do_retry:
  status = i40e_aq_rx_ctl_write_register(hw, reg_addr,
             reg_val, ((void*)0));
  if (hw->aq.asq_last_status == I40E_AQ_RC_EAGAIN && retry) {
   i40e_msec_delay(1);
   retry--;
   goto do_retry;
  }
 }


 if (status || use_register)
  wr32(hw, reg_addr, reg_val);
}
