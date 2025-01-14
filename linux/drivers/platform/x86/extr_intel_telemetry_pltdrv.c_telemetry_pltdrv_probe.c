
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x86_cpu_id {scalar_t__ driver_data; } ;
struct TYPE_4__ {int ssram_size; void* regmap; int ssram_base_addr; } ;
struct TYPE_3__ {int ssram_size; void* regmap; int ssram_base_addr; } ;
struct telemetry_plt_config {TYPE_2__ ioss_config; TYPE_1__ pss_config; int telem_trace_lock; int telem_lock; } ;
struct resource {int start; } ;
struct platform_device {int dev; int name; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int dev_err (int *,char*) ;
 int devm_request_mem_region (int *,int ,int,int ) ;
 void* ioremap_nocache (int ,int) ;
 int iounmap (void*) ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int release_mem_region (int ,int) ;
 int resource_size (struct resource*) ;
 int telemetry_cpu_ids ;
 int telemetry_set_pltdata (int *,struct telemetry_plt_config*) ;
 int telemetry_setup (struct platform_device*) ;
 struct telemetry_plt_config* telm_conf ;
 int telm_pltops ;
 struct x86_cpu_id* x86_match_cpu (int ) ;

__attribute__((used)) static int telemetry_pltdrv_probe(struct platform_device *pdev)
{
 struct resource *res0 = ((void*)0), *res1 = ((void*)0);
 const struct x86_cpu_id *id;
 int size, ret = -ENOMEM;

 id = x86_match_cpu(telemetry_cpu_ids);
 if (!id)
  return -ENODEV;

 telm_conf = (struct telemetry_plt_config *)id->driver_data;

 res0 = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res0) {
  ret = -EINVAL;
  goto out;
 }
 size = resource_size(res0);
 if (!devm_request_mem_region(&pdev->dev, res0->start, size,
         pdev->name)) {
  ret = -EBUSY;
  goto out;
 }
 telm_conf->pss_config.ssram_base_addr = res0->start;
 telm_conf->pss_config.ssram_size = size;

 res1 = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (!res1) {
  ret = -EINVAL;
  goto out;
 }
 size = resource_size(res1);
 if (!devm_request_mem_region(&pdev->dev, res1->start, size,
         pdev->name)) {
  ret = -EBUSY;
  goto out;
 }

 telm_conf->ioss_config.ssram_base_addr = res1->start;
 telm_conf->ioss_config.ssram_size = size;

 telm_conf->pss_config.regmap = ioremap_nocache(
     telm_conf->pss_config.ssram_base_addr,
     telm_conf->pss_config.ssram_size);
 if (!telm_conf->pss_config.regmap) {
  ret = -ENOMEM;
  goto out;
 }

 telm_conf->ioss_config.regmap = ioremap_nocache(
    telm_conf->ioss_config.ssram_base_addr,
    telm_conf->ioss_config.ssram_size);
 if (!telm_conf->ioss_config.regmap) {
  ret = -ENOMEM;
  goto out;
 }

 mutex_init(&telm_conf->telem_lock);
 mutex_init(&telm_conf->telem_trace_lock);

 ret = telemetry_setup(pdev);
 if (ret)
  goto out;

 ret = telemetry_set_pltdata(&telm_pltops, telm_conf);
 if (ret) {
  dev_err(&pdev->dev, "TELEMETRY Set Pltops Failed.\n");
  goto out;
 }

 return 0;

out:
 if (res0)
  release_mem_region(res0->start, resource_size(res0));
 if (res1)
  release_mem_region(res1->start, resource_size(res1));
 if (telm_conf->pss_config.regmap)
  iounmap(telm_conf->pss_config.regmap);
 if (telm_conf->ioss_config.regmap)
  iounmap(telm_conf->ioss_config.regmap);
 dev_err(&pdev->dev, "TELEMETRY Setup Failed.\n");

 return ret;
}
