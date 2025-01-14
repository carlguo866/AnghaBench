
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_go7007 {void* bottom_dma; void* top_dma; int bottom; int top; struct saa7134_dev* dev; } ;
struct saa7134_dev {TYPE_1__* pci; } ;
struct go7007 {struct saa7134_go7007* hpi_context; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GPIO_COMMAND_ADDR ;
 int GPIO_COMMAND_VIDEO ;
 int HPI_ADDR_VIDEO_BUFFER ;
 int PAGE_SIZE ;
 int SAA7134_GPIO_GPMODE0 ;
 int SAA7134_GPIO_GPSTATUS0 ;
 int SAA7134_GPIO_GPSTATUS2 ;
 int SAA7134_IRQ1 ;
 int SAA7134_IRQ1_INTE_RA2_0 ;
 int SAA7134_IRQ1_INTE_RA2_1 ;
 int SAA7134_MAIN_CTRL ;
 int SAA7134_MAIN_CTRL_TE5 ;
 int SAA7134_RS_BA1 (int) ;
 int SAA7134_RS_BA2 (int) ;
 int SAA7134_RS_CONTROL (int) ;
 int SAA7134_RS_CONTROL_BURST_MAX ;
 int SAA7134_RS_PITCH (int) ;
 int SAA7134_TS_DMA0 ;
 int SAA7134_TS_DMA1 ;
 int SAA7134_TS_DMA2 ;
 int SAA7134_TS_PARALLEL ;
 int SAA7134_TS_PARALLEL_SERIAL ;
 int SAA7134_TS_SERIAL1 ;
 int SAA7134_VIDEO_PORT_CTRL0 ;
 int SAA7134_VIDEO_PORT_CTRL4 ;
 int cpu_to_le32 (void*) ;
 void* dma_map_page (int *,int ,int ,int,int ) ;
 int dma_unmap_page (int *,void*,int,int ) ;
 int saa_clearb (int ,int) ;
 int saa_setb (int ,int) ;
 int saa_setl (int ,int) ;
 int saa_writeb (int ,int) ;
 int saa_writel (int,int) ;
 int virt_to_page (int ) ;

__attribute__((used)) static int saa7134_go7007_stream_start(struct go7007 *go)
{
 struct saa7134_go7007 *saa = go->hpi_context;
 struct saa7134_dev *dev = saa->dev;

 saa->top_dma = dma_map_page(&dev->pci->dev, virt_to_page(saa->top),
   0, PAGE_SIZE, DMA_FROM_DEVICE);
 if (!saa->top_dma)
  return -ENOMEM;
 saa->bottom_dma = dma_map_page(&dev->pci->dev,
   virt_to_page(saa->bottom),
   0, PAGE_SIZE, DMA_FROM_DEVICE);
 if (!saa->bottom_dma) {
  dma_unmap_page(&dev->pci->dev, saa->top_dma, PAGE_SIZE,
    DMA_FROM_DEVICE);
  return -ENOMEM;
 }

 saa_writel(SAA7134_VIDEO_PORT_CTRL0 >> 2, 0xA300B000);
 saa_writel(SAA7134_VIDEO_PORT_CTRL4 >> 2, 0x40000200);


 saa_writeb(SAA7134_GPIO_GPMODE0, 0xff);
 saa_writeb(SAA7134_GPIO_GPSTATUS0, HPI_ADDR_VIDEO_BUFFER);
 saa_writeb(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_ADDR);
 saa_writeb(SAA7134_GPIO_GPMODE0, 0x00);


 saa_writeb(SAA7134_TS_PARALLEL, 0xe6);


 saa_setb(SAA7134_TS_SERIAL1, 0x01);
 saa_clearb(SAA7134_TS_SERIAL1, 0x01);


 saa_writeb(SAA7134_TS_PARALLEL_SERIAL, 128 - 1);
 saa_writeb(SAA7134_TS_DMA0, (PAGE_SIZE >> 7) - 1);
 saa_writeb(SAA7134_TS_DMA1, 0);
 saa_writeb(SAA7134_TS_DMA2, 0);


 saa_writeb(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_VIDEO);

 saa_writel(SAA7134_RS_BA1(5), cpu_to_le32(saa->top_dma));
 saa_writel(SAA7134_RS_BA2(5), cpu_to_le32(saa->bottom_dma));
 saa_writel(SAA7134_RS_PITCH(5), 128);
 saa_writel(SAA7134_RS_CONTROL(5), SAA7134_RS_CONTROL_BURST_MAX);


 saa_setl(SAA7134_MAIN_CTRL, SAA7134_MAIN_CTRL_TE5);


 saa_setl(SAA7134_IRQ1,
   SAA7134_IRQ1_INTE_RA2_1 | SAA7134_IRQ1_INTE_RA2_0);

 return 0;
}
