
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_esp_priv {int dma_status; } ;
struct esp {int dummy; } ;


 int ESP_DMA_CMD ;
 int ESP_DMA_CMD_ABORT ;
 int ESP_DMA_CMD_IDLE ;
 int ESP_DMA_CMD_MASK ;
 int ESP_DMA_CMD_START ;
 int ESP_DMA_STAT_ABORT ;
 int ESP_DMA_STAT_ERROR ;
 struct pci_esp_priv* pci_esp_get_priv (struct esp*) ;
 void* pci_esp_read8 (struct esp*,int ) ;
 int pci_esp_write8 (struct esp*,int ,int ) ;

__attribute__((used)) static int pci_esp_dma_error(struct esp *esp)
{
 struct pci_esp_priv *pep = pci_esp_get_priv(esp);

 if (pep->dma_status & ESP_DMA_STAT_ERROR) {
  u8 dma_cmd = pci_esp_read8(esp, ESP_DMA_CMD);

  if ((dma_cmd & ESP_DMA_CMD_MASK) == ESP_DMA_CMD_START)
   pci_esp_write8(esp, ESP_DMA_CMD_ABORT, ESP_DMA_CMD);

  return 1;
 }
 if (pep->dma_status & ESP_DMA_STAT_ABORT) {
  pci_esp_write8(esp, ESP_DMA_CMD_IDLE, ESP_DMA_CMD);
  pep->dma_status = pci_esp_read8(esp, ESP_DMA_CMD);
  return 1;
 }
 return 0;
}
