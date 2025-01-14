
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_rx_queue {int bd_dma; int rb_stts_dma; } ;
struct il_priv {int dummy; } ;


 int FH39_RCSR_CONFIG (int ) ;
 int FH39_RCSR_RBD_BASE (int ) ;
 int FH39_RCSR_RPTR_ADDR (int ) ;
 int FH39_RCSR_RX_CONFIG_REG_BIT_WR_STTS_EN ;
 int FH39_RCSR_RX_CONFIG_REG_POS_IRQ_RBTH ;
 int FH39_RCSR_RX_CONFIG_REG_POS_RBDC_SIZE ;
 int FH39_RCSR_RX_CONFIG_REG_VAL_DMA_CHNL_EN_ENABLE ;
 int FH39_RCSR_RX_CONFIG_REG_VAL_IRQ_DEST_INT_HOST ;
 int FH39_RCSR_RX_CONFIG_REG_VAL_MAX_FRAG_SIZE_128 ;
 int FH39_RCSR_RX_CONFIG_REG_VAL_MSG_MODE_FH ;
 int FH39_RCSR_RX_CONFIG_REG_VAL_RDRBD_EN_ENABLE ;
 int FH39_RCSR_WPTR (int ) ;
 int FH39_RSSR_CTRL ;
 int RX_QUEUE_SIZE_LOG ;
 int il_rd (struct il_priv*,int ) ;
 int il_wr (struct il_priv*,int ,int) ;

__attribute__((used)) static int
il3945_rx_init(struct il_priv *il, struct il_rx_queue *rxq)
{
 il_wr(il, FH39_RCSR_RBD_BASE(0), rxq->bd_dma);
 il_wr(il, FH39_RCSR_RPTR_ADDR(0), rxq->rb_stts_dma);
 il_wr(il, FH39_RCSR_WPTR(0), 0);
 il_wr(il, FH39_RCSR_CONFIG(0),
       FH39_RCSR_RX_CONFIG_REG_VAL_DMA_CHNL_EN_ENABLE |
       FH39_RCSR_RX_CONFIG_REG_VAL_RDRBD_EN_ENABLE |
       FH39_RCSR_RX_CONFIG_REG_BIT_WR_STTS_EN |
       FH39_RCSR_RX_CONFIG_REG_VAL_MAX_FRAG_SIZE_128 | (RX_QUEUE_SIZE_LOG
              <<
              FH39_RCSR_RX_CONFIG_REG_POS_RBDC_SIZE)
       | FH39_RCSR_RX_CONFIG_REG_VAL_IRQ_DEST_INT_HOST | (1 <<
         FH39_RCSR_RX_CONFIG_REG_POS_IRQ_RBTH)
       | FH39_RCSR_RX_CONFIG_REG_VAL_MSG_MODE_FH);


 il_rd(il, FH39_RSSR_CTRL);

 return 0;
}
