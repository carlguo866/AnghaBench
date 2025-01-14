
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct qlcnic_tx_mbx_out {size_t host_prod; int state; int ctx_id; } ;
struct qlcnic_tx_mbx {int intr_id; scalar_t__ src; int size; void* cnsmr_index_high; void* cnsmr_index_low; void* phys_addr_high; void* phys_addr_low; } ;
struct qlcnic_host_tx_ring {size_t crb_cmd_producer; size_t crb_intr_mask; int ctx_id; int num_desc; int hw_cons_phys_addr; int phys_addr; scalar_t__* hw_consumer; scalar_t__ sw_consumer; scalar_t__ producer; } ;
struct qlcnic_hardware_context {scalar_t__ diag_test; size_t pci_base0; TYPE_3__* intr_tbl; } ;
struct TYPE_6__ {int * arg; } ;
struct TYPE_5__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; TYPE_1__ req; } ;
struct qlcnic_adapter {int flags; int max_sds_rings; TYPE_4__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int id; size_t src; } ;


 void* LSD (int ) ;
 void* MSD (int ) ;
 int QLCNIC_CAP0_LEGACY_CONTEXT ;
 int QLCNIC_CMD_CREATE_TX_CTX ;
 int QLCNIC_DEF_INT_ID ;
 scalar_t__ QLCNIC_LOOPBACK_TEST ;
 size_t QLCNIC_MAX_TX_QUEUES ;
 int QLCNIC_MSIX_ENABLED ;
 int QLCNIC_TX_INTR_SHARED ;
 int QLCRDX (struct qlcnic_hardware_context*,int ) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int ,int ) ;
 int memcpy (size_t*,struct qlcnic_tx_mbx*,int) ;
 int memset (struct qlcnic_tx_mbx*,int ,int) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int qlcnic_pf_set_interface_id_create_tx_ctx (struct qlcnic_adapter*,size_t*) ;
 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;

int qlcnic_83xx_create_tx_ctx(struct qlcnic_adapter *adapter,
         struct qlcnic_host_tx_ring *tx, int ring)
{
 int err;
 u16 msix_id;
 u32 *buf, intr_mask, temp = 0;
 struct qlcnic_cmd_args cmd;
 struct qlcnic_tx_mbx mbx;
 struct qlcnic_tx_mbx_out *mbx_out;
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 u32 msix_vector;


 tx->producer = 0;
 tx->sw_consumer = 0;
 *(tx->hw_consumer) = 0;

 memset(&mbx, 0, sizeof(struct qlcnic_tx_mbx));


 mbx.phys_addr_low = LSD(tx->phys_addr);
 mbx.phys_addr_high = MSD(tx->phys_addr);
 mbx.cnsmr_index_low = LSD(tx->hw_cons_phys_addr);
 mbx.cnsmr_index_high = MSD(tx->hw_cons_phys_addr);
 mbx.size = tx->num_desc;
 if (adapter->flags & QLCNIC_MSIX_ENABLED) {
  if (!(adapter->flags & QLCNIC_TX_INTR_SHARED))
   msix_vector = adapter->max_sds_rings + ring;
  else
   msix_vector = adapter->max_sds_rings - 1;
  msix_id = ahw->intr_tbl[msix_vector].id;
 } else {
  msix_id = QLCRDX(ahw, QLCNIC_DEF_INT_ID);
 }

 if (adapter->ahw->diag_test != QLCNIC_LOOPBACK_TEST)
  mbx.intr_id = msix_id;
 else
  mbx.intr_id = 0xffff;
 mbx.src = 0;

 qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_CREATE_TX_CTX);

 if (qlcnic_sriov_pf_check(adapter) || qlcnic_sriov_vf_check(adapter))
  cmd.req.arg[0] |= (0x3 << 29);

 if (qlcnic_sriov_pf_check(adapter))
  qlcnic_pf_set_interface_id_create_tx_ctx(adapter, &temp);

 cmd.req.arg[1] = QLCNIC_CAP0_LEGACY_CONTEXT;
 cmd.req.arg[5] = QLCNIC_MAX_TX_QUEUES | temp;
 buf = &cmd.req.arg[6];
 memcpy(buf, &mbx, sizeof(struct qlcnic_tx_mbx));

 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err) {
  dev_err(&adapter->pdev->dev,
   "Failed to create Tx ctx in firmware 0x%x\n", err);
  goto out;
 }
 mbx_out = (struct qlcnic_tx_mbx_out *)&cmd.rsp.arg[2];
 tx->crb_cmd_producer = ahw->pci_base0 + mbx_out->host_prod;
 tx->ctx_id = mbx_out->ctx_id;
 if ((adapter->flags & QLCNIC_MSIX_ENABLED) &&
     !(adapter->flags & QLCNIC_TX_INTR_SHARED)) {
  intr_mask = ahw->intr_tbl[adapter->max_sds_rings + ring].src;
  tx->crb_intr_mask = ahw->pci_base0 + intr_mask;
 }
 dev_info(&adapter->pdev->dev, "Tx Context[0x%x] Created, state:0x%x\n",
   tx->ctx_id, mbx_out->state);
out:
 qlcnic_free_mbx_args(&cmd);
 return err;
}
