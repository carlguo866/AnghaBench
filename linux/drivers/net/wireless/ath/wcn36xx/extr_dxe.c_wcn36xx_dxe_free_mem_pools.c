
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chunk_size; int phy_addr; scalar_t__ virt_addr; } ;
struct TYPE_4__ {int chunk_size; int phy_addr; scalar_t__ virt_addr; } ;
struct wcn36xx {TYPE_1__ data_mem_pool; int dev; TYPE_2__ mgmt_mem_pool; } ;


 int WCN36XX_DXE_CH_DESC_NUMB_TX_H ;
 int WCN36XX_DXE_CH_DESC_NUMB_TX_L ;
 int dma_free_coherent (int ,int,scalar_t__,int ) ;

void wcn36xx_dxe_free_mem_pools(struct wcn36xx *wcn)
{
 if (wcn->mgmt_mem_pool.virt_addr)
  dma_free_coherent(wcn->dev, wcn->mgmt_mem_pool.chunk_size *
      WCN36XX_DXE_CH_DESC_NUMB_TX_H,
      wcn->mgmt_mem_pool.virt_addr,
      wcn->mgmt_mem_pool.phy_addr);

 if (wcn->data_mem_pool.virt_addr) {
  dma_free_coherent(wcn->dev, wcn->data_mem_pool.chunk_size *
      WCN36XX_DXE_CH_DESC_NUMB_TX_L,
      wcn->data_mem_pool.virt_addr,
      wcn->data_mem_pool.phy_addr);
 }
}
