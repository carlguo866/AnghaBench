
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ice_vsi {scalar_t__ tx_mapping_mode; int* txq_map; int alloc_txq; scalar_t__ rx_mapping_mode; int* rxq_map; } ;
struct ice_vf {size_t lan_vsi_idx; int first_vector_idx; int vf_id; struct ice_pf* pf; } ;
struct TYPE_4__ {int msix_vector_first_id; } ;
struct TYPE_5__ {int vf_base_id; TYPE_1__ common_cap; } ;
struct ice_hw {int pf_id; TYPE_2__ func_caps; } ;
struct ice_pf {int num_vf_msix; TYPE_3__* pdev; struct ice_hw hw; struct ice_vsi** vsi; } ;
struct TYPE_6__ {int dev; } ;


 int GLINT_VECT2FUNC (int) ;
 int GLINT_VECT2FUNC_PF_NUM_M ;
 int GLINT_VECT2FUNC_PF_NUM_S ;
 int GLINT_VECT2FUNC_VF_NUM_M ;
 int GLINT_VECT2FUNC_VF_NUM_S ;
 scalar_t__ ICE_VSI_MAP_CONTIG ;
 int VPINT_ALLOC (int) ;
 int VPINT_ALLOC_FIRST_M ;
 int VPINT_ALLOC_FIRST_S ;
 int VPINT_ALLOC_LAST_M ;
 int VPINT_ALLOC_LAST_S ;
 int VPINT_ALLOC_PCI (int) ;
 int VPINT_ALLOC_PCI_FIRST_M ;
 int VPINT_ALLOC_PCI_FIRST_S ;
 int VPINT_ALLOC_PCI_LAST_M ;
 int VPINT_ALLOC_PCI_LAST_S ;
 int VPINT_ALLOC_PCI_VALID_M ;
 int VPINT_ALLOC_VALID_M ;
 int VPINT_MBX_CTL (int) ;
 int VPINT_MBX_CTL_CAUSE_ENA_M ;
 int VPLAN_RXQ_MAPENA (int) ;
 int VPLAN_RXQ_MAPENA_RX_ENA_M ;
 int VPLAN_RX_QBASE (int) ;
 int VPLAN_RX_QBASE_VFFIRSTQ_M ;
 int VPLAN_RX_QBASE_VFFIRSTQ_S ;
 int VPLAN_RX_QBASE_VFNUMQ_M ;
 int VPLAN_RX_QBASE_VFNUMQ_S ;
 int VPLAN_TXQ_MAPENA (int) ;
 int VPLAN_TXQ_MAPENA_TX_ENA_M ;
 int VPLAN_TX_QBASE (int) ;
 int VPLAN_TX_QBASE_VFFIRSTQ_M ;
 int VPLAN_TX_QBASE_VFFIRSTQ_S ;
 int VPLAN_TX_QBASE_VFNUMQ_M ;
 int VPLAN_TX_QBASE_VFNUMQ_S ;
 int dev_err (int *,char*) ;
 int wr32 (struct ice_hw*,int ,int) ;

__attribute__((used)) static void ice_ena_vf_mappings(struct ice_vf *vf)
{
 int abs_vf_id, abs_first, abs_last;
 struct ice_pf *pf = vf->pf;
 struct ice_vsi *vsi;
 int first, last, v;
 struct ice_hw *hw;
 u32 reg;

 hw = &pf->hw;
 vsi = pf->vsi[vf->lan_vsi_idx];
 first = vf->first_vector_idx;
 last = (first + pf->num_vf_msix) - 1;
 abs_first = first + pf->hw.func_caps.common_cap.msix_vector_first_id;
 abs_last = (abs_first + pf->num_vf_msix) - 1;
 abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;


 reg = (((abs_first << VPINT_ALLOC_FIRST_S) & VPINT_ALLOC_FIRST_M) |
        ((abs_last << VPINT_ALLOC_LAST_S) & VPINT_ALLOC_LAST_M) |
        VPINT_ALLOC_VALID_M);
 wr32(hw, VPINT_ALLOC(vf->vf_id), reg);

 reg = (((abs_first << VPINT_ALLOC_PCI_FIRST_S)
   & VPINT_ALLOC_PCI_FIRST_M) |
        ((abs_last << VPINT_ALLOC_PCI_LAST_S) & VPINT_ALLOC_PCI_LAST_M) |
        VPINT_ALLOC_PCI_VALID_M);
 wr32(hw, VPINT_ALLOC_PCI(vf->vf_id), reg);

 for (v = first; v <= last; v++) {
  reg = (((abs_vf_id << GLINT_VECT2FUNC_VF_NUM_S) &
   GLINT_VECT2FUNC_VF_NUM_M) |
         ((hw->pf_id << GLINT_VECT2FUNC_PF_NUM_S) &
   GLINT_VECT2FUNC_PF_NUM_M));
  wr32(hw, GLINT_VECT2FUNC(v), reg);
 }




 wr32(hw, VPINT_MBX_CTL(abs_vf_id), VPINT_MBX_CTL_CAUSE_ENA_M | 0);

 wr32(hw, VPLAN_TXQ_MAPENA(vf->vf_id), VPLAN_TXQ_MAPENA_TX_ENA_M);


 if (vsi->tx_mapping_mode == ICE_VSI_MAP_CONTIG) {




  reg = (((vsi->txq_map[0] << VPLAN_TX_QBASE_VFFIRSTQ_S) &
   VPLAN_TX_QBASE_VFFIRSTQ_M) |
         (((vsi->alloc_txq - 1) << VPLAN_TX_QBASE_VFNUMQ_S) &
   VPLAN_TX_QBASE_VFNUMQ_M));
  wr32(hw, VPLAN_TX_QBASE(vf->vf_id), reg);
 } else {
  dev_err(&pf->pdev->dev,
   "Scattered mode for VF Tx queues is not yet implemented\n");
 }


 wr32(hw, VPLAN_RXQ_MAPENA(vf->vf_id), VPLAN_RXQ_MAPENA_RX_ENA_M);


 if (vsi->rx_mapping_mode == ICE_VSI_MAP_CONTIG) {




  reg = (((vsi->rxq_map[0] << VPLAN_RX_QBASE_VFFIRSTQ_S) &
   VPLAN_RX_QBASE_VFFIRSTQ_M) |
         (((vsi->alloc_txq - 1) << VPLAN_RX_QBASE_VFNUMQ_S) &
   VPLAN_RX_QBASE_VFNUMQ_M));
  wr32(hw, VPLAN_RX_QBASE(vf->vf_id), reg);
 } else {
  dev_err(&pf->pdev->dev,
   "Scattered mode for VF Rx queues is not yet implemented\n");
 }
}
