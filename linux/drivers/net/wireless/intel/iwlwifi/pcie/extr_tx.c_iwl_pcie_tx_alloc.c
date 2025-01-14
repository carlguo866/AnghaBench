
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct iwlagn_scd_bc_tbl {int dummy; } ;
struct iwl_txq {int dummy; } ;
struct iwl_trans_pcie {int cmd_queue; TYPE_4__** txq; TYPE_4__* txq_memory; int kw; int scd_bc_tbls; } ;
struct iwl_trans {TYPE_3__* cfg; TYPE_2__* trans_cfg; } ;
struct iwl_gen3_bc_tbl {int dummy; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_9__ {int min_256_ba_txq_size; int min_txq_size; } ;
struct TYPE_8__ {scalar_t__ device_family; TYPE_1__* base_params; } ;
struct TYPE_7__ {int num_of_queues; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IWL_CMD_QUEUE_SIZE ;
 int IWL_DEFAULT_QUEUE_SIZE ;
 scalar_t__ IWL_DEVICE_FAMILY_22560 ;
 int IWL_ERR (struct iwl_trans*,char*,...) ;
 int IWL_KW_SIZE ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 scalar_t__ WARN_ON (TYPE_4__*) ;
 int iwl_pcie_alloc_dma_ptr (struct iwl_trans*,int *,int) ;
 int iwl_pcie_tx_free (struct iwl_trans*) ;
 int iwl_pcie_txq_alloc (struct iwl_trans*,TYPE_4__*,int,int) ;
 TYPE_4__* kcalloc (int,int,int ) ;
 int max_t (int ,int ,int ) ;
 int u32 ;

__attribute__((used)) static int iwl_pcie_tx_alloc(struct iwl_trans *trans)
{
 int ret;
 int txq_id, slots_num;
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 u16 bc_tbls_size = trans->trans_cfg->base_params->num_of_queues;

 bc_tbls_size *= (trans->trans_cfg->device_family >=
    IWL_DEVICE_FAMILY_22560) ?
  sizeof(struct iwl_gen3_bc_tbl) :
  sizeof(struct iwlagn_scd_bc_tbl);



 if (WARN_ON(trans_pcie->txq_memory)) {
  ret = -EINVAL;
  goto error;
 }

 ret = iwl_pcie_alloc_dma_ptr(trans, &trans_pcie->scd_bc_tbls,
         bc_tbls_size);
 if (ret) {
  IWL_ERR(trans, "Scheduler BC Table allocation failed\n");
  goto error;
 }


 ret = iwl_pcie_alloc_dma_ptr(trans, &trans_pcie->kw, IWL_KW_SIZE);
 if (ret) {
  IWL_ERR(trans, "Keep Warm allocation failed\n");
  goto error;
 }

 trans_pcie->txq_memory =
  kcalloc(trans->trans_cfg->base_params->num_of_queues,
   sizeof(struct iwl_txq), GFP_KERNEL);
 if (!trans_pcie->txq_memory) {
  IWL_ERR(trans, "Not enough memory for txq\n");
  ret = -ENOMEM;
  goto error;
 }


 for (txq_id = 0; txq_id < trans->trans_cfg->base_params->num_of_queues;
      txq_id++) {
  bool cmd_queue = (txq_id == trans_pcie->cmd_queue);

  if (cmd_queue)
   slots_num = max_t(u32, IWL_CMD_QUEUE_SIZE,
       trans->cfg->min_txq_size);
  else
   slots_num = max_t(u32, IWL_DEFAULT_QUEUE_SIZE,
       trans->cfg->min_256_ba_txq_size);
  trans_pcie->txq[txq_id] = &trans_pcie->txq_memory[txq_id];
  ret = iwl_pcie_txq_alloc(trans, trans_pcie->txq[txq_id],
      slots_num, cmd_queue);
  if (ret) {
   IWL_ERR(trans, "Tx %d queue alloc failed\n", txq_id);
   goto error;
  }
  trans_pcie->txq[txq_id]->id = txq_id;
 }

 return 0;

error:
 iwl_pcie_tx_free(trans);

 return ret;
}
