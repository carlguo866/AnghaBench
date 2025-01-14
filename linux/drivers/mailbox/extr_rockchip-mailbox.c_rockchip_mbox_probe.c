
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct rockchip_mbox_data {int num_chans; } ;
struct TYPE_13__ {int num_chans; int txdone_irq; int * ops; TYPE_2__* dev; void* chans; } ;
struct rockchip_mbox {size_t buf_size; TYPE_4__ mbox; TYPE_1__* chans; int pclk; int mbox_base; } ;
struct resource {int dummy; } ;
struct TYPE_12__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_11__ {int idx; int irq; int * msg; struct rockchip_mbox* mb; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_2__*,char*,int) ;
 int dev_name (TYPE_2__*) ;
 int devm_clk_get (TYPE_2__*,char*) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 void* devm_kcalloc (TYPE_2__*,int,int,int ) ;
 struct rockchip_mbox* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_mbox_controller_register (TYPE_2__*,TYPE_4__*) ;
 int devm_request_threaded_irq (TYPE_2__*,int,int ,int ,int ,int ,struct rockchip_mbox*) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rockchip_mbox*) ;
 scalar_t__ resource_size (struct resource*) ;
 int rockchip_mbox_chan_ops ;
 int rockchip_mbox_irq ;
 int rockchip_mbox_isr ;
 int rockchip_mbox_of_match ;

__attribute__((used)) static int rockchip_mbox_probe(struct platform_device *pdev)
{
 struct rockchip_mbox *mb;
 const struct of_device_id *match;
 const struct rockchip_mbox_data *drv_data;
 struct resource *res;
 int ret, irq, i;

 if (!pdev->dev.of_node)
  return -ENODEV;

 match = of_match_node(rockchip_mbox_of_match, pdev->dev.of_node);
 drv_data = (const struct rockchip_mbox_data *)match->data;

 mb = devm_kzalloc(&pdev->dev, sizeof(*mb), GFP_KERNEL);
 if (!mb)
  return -ENOMEM;

 mb->chans = devm_kcalloc(&pdev->dev, drv_data->num_chans,
     sizeof(*mb->chans), GFP_KERNEL);
 if (!mb->chans)
  return -ENOMEM;

 mb->mbox.chans = devm_kcalloc(&pdev->dev, drv_data->num_chans,
          sizeof(*mb->mbox.chans), GFP_KERNEL);
 if (!mb->mbox.chans)
  return -ENOMEM;

 platform_set_drvdata(pdev, mb);

 mb->mbox.dev = &pdev->dev;
 mb->mbox.num_chans = drv_data->num_chans;
 mb->mbox.ops = &rockchip_mbox_chan_ops;
 mb->mbox.txdone_irq = 1;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;

 mb->mbox_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(mb->mbox_base))
  return PTR_ERR(mb->mbox_base);


 mb->buf_size = (size_t)resource_size(res) / (drv_data->num_chans * 2);

 mb->pclk = devm_clk_get(&pdev->dev, "pclk_mailbox");
 if (IS_ERR(mb->pclk)) {
  ret = PTR_ERR(mb->pclk);
  dev_err(&pdev->dev, "failed to get pclk_mailbox clock: %d\n",
   ret);
  return ret;
 }

 ret = clk_prepare_enable(mb->pclk);
 if (ret) {
  dev_err(&pdev->dev, "failed to enable pclk: %d\n", ret);
  return ret;
 }

 for (i = 0; i < mb->mbox.num_chans; i++) {
  irq = platform_get_irq(pdev, i);
  if (irq < 0)
   return irq;

  ret = devm_request_threaded_irq(&pdev->dev, irq,
      rockchip_mbox_irq,
      rockchip_mbox_isr, IRQF_ONESHOT,
      dev_name(&pdev->dev), mb);
  if (ret < 0)
   return ret;

  mb->chans[i].idx = i;
  mb->chans[i].irq = irq;
  mb->chans[i].mb = mb;
  mb->chans[i].msg = ((void*)0);
 }

 ret = devm_mbox_controller_register(&pdev->dev, &mb->mbox);
 if (ret < 0)
  dev_err(&pdev->dev, "Failed to register mailbox: %d\n", ret);

 return ret;
}
