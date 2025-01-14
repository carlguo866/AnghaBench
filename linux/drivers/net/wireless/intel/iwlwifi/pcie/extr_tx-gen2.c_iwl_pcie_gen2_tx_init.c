
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_txq {int id; } ;
struct iwl_trans_pcie {int cmd_queue; int queue_used; struct iwl_txq** txq; } ;
struct iwl_trans {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IWL_ERR (struct iwl_trans*,char*,...) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_pcie_gen2_tx_free (struct iwl_trans*) ;
 int iwl_pcie_txq_alloc (struct iwl_trans*,struct iwl_txq*,int,int) ;
 int iwl_pcie_txq_init (struct iwl_trans*,struct iwl_txq*,int,int) ;
 struct iwl_txq* kzalloc (int,int ) ;
 int set_bit (int,int ) ;

int iwl_pcie_gen2_tx_init(struct iwl_trans *trans, int txq_id, int queue_size)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_txq *queue;
 int ret;


 if (!trans_pcie->txq[txq_id]) {
  queue = kzalloc(sizeof(*queue), GFP_KERNEL);
  if (!queue) {
   IWL_ERR(trans, "Not enough memory for tx queue\n");
   return -ENOMEM;
  }
  trans_pcie->txq[txq_id] = queue;
  ret = iwl_pcie_txq_alloc(trans, queue, queue_size, 1);
  if (ret) {
   IWL_ERR(trans, "Tx %d queue init failed\n", txq_id);
   goto error;
  }
 } else {
  queue = trans_pcie->txq[txq_id];
 }

 ret = iwl_pcie_txq_init(trans, queue, queue_size,
    (txq_id == trans_pcie->cmd_queue));
 if (ret) {
  IWL_ERR(trans, "Tx %d queue alloc failed\n", txq_id);
  goto error;
 }
 trans_pcie->txq[txq_id]->id = txq_id;
 set_bit(txq_id, trans_pcie->queue_used);

 return 0;

error:
 iwl_pcie_gen2_tx_free(trans);
 return ret;
}
