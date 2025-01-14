
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mac_configuration_entry {int flags; int lsb_mac_addr; int middle_mac_addr; int msb_mac_addr; int vlan_id; int pf_id; int clients_bit_vector; } ;
struct bnx2x_raw_obj {int cl_id; int func_id; } ;
struct bnx2x_vlan_mac_obj {struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;


 int MAC_CONFIGURATION_ENTRY_ACTION_TYPE ;
 int MAC_CONFIGURATION_ENTRY_VLAN_FILTERING_MODE ;
 int SET_FLAG (int ,int ,int) ;
 int T_ETH_MAC_COMMAND_INVALIDATE ;
 int T_ETH_MAC_COMMAND_SET ;
 int bnx2x_set_fw_mac_addr (int *,int *,int *,int *) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static inline void bnx2x_vlan_mac_set_cfg_entry_e1x(struct bnx2x *bp,
 struct bnx2x_vlan_mac_obj *o, bool add, int opcode, u8 *mac,
 u16 vlan_id, struct mac_configuration_entry *cfg_entry)
{
 struct bnx2x_raw_obj *r = &o->raw;
 u32 cl_bit_vec = (1 << r->cl_id);

 cfg_entry->clients_bit_vector = cpu_to_le32(cl_bit_vec);
 cfg_entry->pf_id = r->func_id;
 cfg_entry->vlan_id = cpu_to_le16(vlan_id);

 if (add) {
  SET_FLAG(cfg_entry->flags, MAC_CONFIGURATION_ENTRY_ACTION_TYPE,
    T_ETH_MAC_COMMAND_SET);
  SET_FLAG(cfg_entry->flags,
    MAC_CONFIGURATION_ENTRY_VLAN_FILTERING_MODE, opcode);


  bnx2x_set_fw_mac_addr(&cfg_entry->msb_mac_addr,
          &cfg_entry->middle_mac_addr,
          &cfg_entry->lsb_mac_addr, mac);
 } else
  SET_FLAG(cfg_entry->flags, MAC_CONFIGURATION_ENTRY_ACTION_TYPE,
    T_ETH_MAC_COMMAND_INVALIDATE);
}
