
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_camera_dev {int dummy; } ;


 int DMA_V ;
 int pxa_camera_dma_irq (int,struct pxa_camera_dev*,int ) ;

__attribute__((used)) static void pxa_camera_dma_irq_v(int channel, void *data)
{
 struct pxa_camera_dev *pcdev = data;
 pxa_camera_dma_irq(channel, pcdev, DMA_V);
}
