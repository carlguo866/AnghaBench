
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ce_desc_64 {int dummy; } ;
struct ce_desc {int dummy; } ;
struct ce_attr {int dest_nentries; } ;
struct ath10k_ce_ring {int base_addr_owner_space; int base_addr_ce_space; int nentries_mask; int write_index; int sw_index; } ;
struct ath10k_ce_pipe {struct ath10k_ce_ring* dest_ring; } ;
struct ath10k_ce {struct ath10k_ce_pipe* ce_states; } ;
struct TYPE_2__ {scalar_t__ target_64bit; } ;
struct ath10k {TYPE_1__ hw_params; } ;


 int ATH10K_DBG_BOOT ;
 int ath10k_ce_base_address (struct ath10k*,unsigned int) ;
 int ath10k_ce_dest_ring_base_addr_set (struct ath10k*,unsigned int,int ) ;
 int ath10k_ce_dest_ring_byte_swap_set (struct ath10k*,int,int ) ;
 int ath10k_ce_dest_ring_highmark_set (struct ath10k*,int,int) ;
 int ath10k_ce_dest_ring_lowmark_set (struct ath10k*,int,int ) ;
 int ath10k_ce_dest_ring_read_index_get (struct ath10k*,int) ;
 int ath10k_ce_dest_ring_size_set (struct ath10k*,int,int) ;
 int ath10k_ce_dest_ring_write_index_get (struct ath10k*,int) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*,unsigned int,int,int ) ;
 int memset (int ,int ,int) ;
 int roundup_pow_of_two (int ) ;

__attribute__((used)) static int ath10k_ce_init_dest_ring(struct ath10k *ar,
        unsigned int ce_id,
        const struct ce_attr *attr)
{
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 struct ath10k_ce_pipe *ce_state = &ce->ce_states[ce_id];
 struct ath10k_ce_ring *dest_ring = ce_state->dest_ring;
 u32 nentries, ctrl_addr = ath10k_ce_base_address(ar, ce_id);

 nentries = roundup_pow_of_two(attr->dest_nentries);

 if (ar->hw_params.target_64bit)
  memset(dest_ring->base_addr_owner_space, 0,
         nentries * sizeof(struct ce_desc_64));
 else
  memset(dest_ring->base_addr_owner_space, 0,
         nentries * sizeof(struct ce_desc));

 dest_ring->sw_index = ath10k_ce_dest_ring_read_index_get(ar, ctrl_addr);
 dest_ring->sw_index &= dest_ring->nentries_mask;
 dest_ring->write_index =
  ath10k_ce_dest_ring_write_index_get(ar, ctrl_addr);
 dest_ring->write_index &= dest_ring->nentries_mask;

 ath10k_ce_dest_ring_base_addr_set(ar, ce_id,
       dest_ring->base_addr_ce_space);
 ath10k_ce_dest_ring_size_set(ar, ctrl_addr, nentries);
 ath10k_ce_dest_ring_byte_swap_set(ar, ctrl_addr, 0);
 ath10k_ce_dest_ring_lowmark_set(ar, ctrl_addr, 0);
 ath10k_ce_dest_ring_highmark_set(ar, ctrl_addr, nentries);

 ath10k_dbg(ar, ATH10K_DBG_BOOT,
     "boot ce dest ring id %d entries %d base_addr %pK\n",
     ce_id, nentries, dest_ring->base_addr_owner_space);

 return 0;
}
