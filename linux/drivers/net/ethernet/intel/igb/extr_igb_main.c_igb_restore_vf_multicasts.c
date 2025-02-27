
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vf_data_storage {int num_vf_mc_hashes; int flags; int * vf_mc_hashes; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; struct vf_data_storage* vf_data; struct e1000_hw hw; } ;


 int E1000_VMOLR (int) ;
 int E1000_VMOLR_MPME ;
 int E1000_VMOLR_ROMPE ;
 int IGB_VF_FLAG_MULTI_PROMISC ;
 int igb_mta_set (struct e1000_hw*,int ) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_restore_vf_multicasts(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct vf_data_storage *vf_data;
 int i, j;

 for (i = 0; i < adapter->vfs_allocated_count; i++) {
  u32 vmolr = rd32(E1000_VMOLR(i));

  vmolr &= ~(E1000_VMOLR_ROMPE | E1000_VMOLR_MPME);

  vf_data = &adapter->vf_data[i];

  if ((vf_data->num_vf_mc_hashes > 30) ||
      (vf_data->flags & IGB_VF_FLAG_MULTI_PROMISC)) {
   vmolr |= E1000_VMOLR_MPME;
  } else if (vf_data->num_vf_mc_hashes) {
   vmolr |= E1000_VMOLR_ROMPE;
   for (j = 0; j < vf_data->num_vf_mc_hashes; j++)
    igb_mta_set(hw, vf_data->vf_mc_hashes[j]);
  }
  wr32(E1000_VMOLR(i), vmolr);
 }
}
