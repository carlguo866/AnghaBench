
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int id; scalar_t__ dma_addr; } ;
struct il_tx_queue {TYPE_1__ q; } ;
struct TYPE_4__ {struct il3945_shared* shared_virt; } ;
struct il_priv {TYPE_2__ _3945; } ;
struct il3945_shared {int * tx_base_ptr; } ;


 int FH39_CBCC_BASE (int) ;
 int FH39_CBCC_CTRL (int) ;
 int FH39_TCSR_CONFIG (int) ;
 int FH39_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_IFTFD ;
 int FH39_TCSR_TX_CONFIG_REG_VAL_CIRQ_RTC_NOINT ;
 int FH39_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE ;
 int FH39_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE_VAL ;
 int FH39_TCSR_TX_CONFIG_REG_VAL_MSG_MODE_TXF ;
 int FH39_TSSR_CBB_BASE ;
 int _il_rd (struct il_priv*,int ) ;
 int cpu_to_le32 (int ) ;
 int il_wr (struct il_priv*,int ,int) ;

int
il3945_hw_tx_queue_init(struct il_priv *il, struct il_tx_queue *txq)
{
 int txq_id = txq->q.id;

 struct il3945_shared *shared_data = il->_3945.shared_virt;

 shared_data->tx_base_ptr[txq_id] = cpu_to_le32((u32) txq->q.dma_addr);

 il_wr(il, FH39_CBCC_CTRL(txq_id), 0);
 il_wr(il, FH39_CBCC_BASE(txq_id), 0);

 il_wr(il, FH39_TCSR_CONFIG(txq_id),
       FH39_TCSR_TX_CONFIG_REG_VAL_CIRQ_RTC_NOINT |
       FH39_TCSR_TX_CONFIG_REG_VAL_MSG_MODE_TXF |
       FH39_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_IFTFD |
       FH39_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE_VAL |
       FH39_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE);


 _il_rd(il, FH39_TSSR_CBB_BASE);

 return 0;
}
