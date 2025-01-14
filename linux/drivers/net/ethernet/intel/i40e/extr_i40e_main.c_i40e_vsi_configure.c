
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int dummy; } ;


 int i40e_restore_vlan (struct i40e_vsi*) ;
 int i40e_set_vsi_rx_mode (struct i40e_vsi*) ;
 int i40e_vsi_config_dcb_rings (struct i40e_vsi*) ;
 int i40e_vsi_configure_rx (struct i40e_vsi*) ;
 int i40e_vsi_configure_tx (struct i40e_vsi*) ;

__attribute__((used)) static int i40e_vsi_configure(struct i40e_vsi *vsi)
{
 int err;

 i40e_set_vsi_rx_mode(vsi);
 i40e_restore_vlan(vsi);
 i40e_vsi_config_dcb_rings(vsi);
 err = i40e_vsi_configure_tx(vsi);
 if (!err)
  err = i40e_vsi_configure_rx(vsi);

 return err;
}
