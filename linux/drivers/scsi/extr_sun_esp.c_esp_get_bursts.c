
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct esp {int bursts; int dev; } ;
struct device_node {struct device_node* parent; } ;


 int DMA_BURST16 ;
 int DMA_BURST32 ;
 int of_getintprop_default (struct device_node*,char*,int) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void esp_get_bursts(struct esp *esp, struct platform_device *dma_of)
{
 struct device_node *dma_dp = dma_of->dev.of_node;
 struct platform_device *op = to_platform_device(esp->dev);
 struct device_node *dp;
 u8 bursts, val;

 dp = op->dev.of_node;
 bursts = of_getintprop_default(dp, "burst-sizes", 0xff);
 val = of_getintprop_default(dma_dp, "burst-sizes", 0xff);
 if (val != 0xff)
  bursts &= val;

 val = of_getintprop_default(dma_dp->parent, "burst-sizes", 0xff);
 if (val != 0xff)
  bursts &= val;

 if (bursts == 0xff ||
     (bursts & DMA_BURST16) == 0 ||
     (bursts & DMA_BURST32) == 0)
  bursts = (DMA_BURST32 - 1);

 esp->bursts = bursts;
}
