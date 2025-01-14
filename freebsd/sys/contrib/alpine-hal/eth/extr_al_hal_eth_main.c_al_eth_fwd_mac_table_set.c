
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct al_eth_fwd_mac_table_entry {int* addr; int* mask; } ;
struct TYPE_4__ {TYPE_1__* fwd_mac; } ;
struct TYPE_3__ {int ctrl; int mask_h; int mask_l; int data_h; int data_l; } ;


 size_t AL_ETH_FWD_MAC_NUM ;
 int al_assert (int) ;
 size_t al_eth_fwd_mac_table_entry_to_val (struct al_eth_fwd_mac_table_entry*) ;
 int al_reg_write32 (int *,size_t) ;

int al_eth_fwd_mac_table_set(struct al_hal_eth_adapter *adapter, uint32_t idx,
        struct al_eth_fwd_mac_table_entry *entry)
{
 uint32_t val;

 al_assert(idx < AL_ETH_FWD_MAC_NUM);

 val = (entry->addr[2] << 24) | (entry->addr[3] << 16) |
       (entry->addr[4] << 8) | entry->addr[5];
 al_reg_write32(&adapter->ec_regs_base->fwd_mac[idx].data_l, val);
 val = (entry->addr[0] << 8) | entry->addr[1];
 al_reg_write32(&adapter->ec_regs_base->fwd_mac[idx].data_h, val);
 val = (entry->mask[2] << 24) | (entry->mask[3] << 16) |
       (entry->mask[4] << 8) | entry->mask[5];
 al_reg_write32(&adapter->ec_regs_base->fwd_mac[idx].mask_l, val);
 val = (entry->mask[0] << 8) | entry->mask[1];
 al_reg_write32(&adapter->ec_regs_base->fwd_mac[idx].mask_h, val);

 val = al_eth_fwd_mac_table_entry_to_val(entry);
 al_reg_write32(&adapter->ec_regs_base->fwd_mac[idx].ctrl, val);
 return 0;
}
