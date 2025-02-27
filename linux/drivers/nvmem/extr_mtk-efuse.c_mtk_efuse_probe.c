
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct nvmem_device {int dummy; } ;
struct nvmem_config {int stride; int word_size; struct device* dev; struct mtk_efuse_priv* priv; int size; int reg_write; int reg_read; } ;
struct mtk_efuse_priv {int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct nvmem_device*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct mtk_efuse_priv* devm_kzalloc (struct device*,int,int ) ;
 struct nvmem_device* devm_nvmem_register (struct device*,struct nvmem_config*) ;
 int mtk_reg_read ;
 int mtk_reg_write ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int mtk_efuse_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;
 struct nvmem_device *nvmem;
 struct nvmem_config econfig = {};
 struct mtk_efuse_priv *priv;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 econfig.stride = 4;
 econfig.word_size = 4;
 econfig.reg_read = mtk_reg_read;
 econfig.reg_write = mtk_reg_write;
 econfig.size = resource_size(res);
 econfig.priv = priv;
 econfig.dev = dev;
 nvmem = devm_nvmem_register(dev, &econfig);

 return PTR_ERR_OR_ZERO(nvmem);
}
