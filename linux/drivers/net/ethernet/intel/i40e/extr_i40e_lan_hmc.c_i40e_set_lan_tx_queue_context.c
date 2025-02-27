
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_hmc_obj_txq {int dummy; } ;
typedef scalar_t__ i40e_status ;


 int I40E_HMC_LAN_TX ;
 scalar_t__ i40e_hmc_get_object_va (struct i40e_hw*,int **,int ,int ) ;
 int i40e_hmc_txq_ce_info ;
 scalar_t__ i40e_set_hmc_context (int *,int ,int *) ;

i40e_status i40e_set_lan_tx_queue_context(struct i40e_hw *hw,
          u16 queue,
          struct i40e_hmc_obj_txq *s)
{
 i40e_status err;
 u8 *context_bytes;

 err = i40e_hmc_get_object_va(hw, &context_bytes,
         I40E_HMC_LAN_TX, queue);
 if (err < 0)
  return err;

 return i40e_set_hmc_context(context_bytes,
        i40e_hmc_txq_ce_info, (u8 *)s);
}
