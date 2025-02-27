
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct exynos_tmu_data {scalar_t__ soc; scalar_t__ base; scalar_t__ base_second; } ;


 scalar_t__ EXYNOS_TMU_REG_TRIMINFO ;
 scalar_t__ EXYNOS_TMU_TRIMINFO_CON1 ;
 scalar_t__ EXYNOS_TMU_TRIMINFO_CON2 ;
 unsigned int EXYNOS_TRIMINFO_RELOAD_ENABLE ;
 scalar_t__ SOC_ARCH_EXYNOS3250 ;
 scalar_t__ SOC_ARCH_EXYNOS4412 ;
 scalar_t__ SOC_ARCH_EXYNOS5250 ;
 scalar_t__ SOC_ARCH_EXYNOS5420_TRIMINFO ;
 struct exynos_tmu_data* platform_get_drvdata (struct platform_device*) ;
 unsigned int readl (scalar_t__) ;
 int sanitize_temp_error (struct exynos_tmu_data*,unsigned int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void exynos4412_tmu_initialize(struct platform_device *pdev)
{
 struct exynos_tmu_data *data = platform_get_drvdata(pdev);
 unsigned int trim_info, ctrl;

 if (data->soc == SOC_ARCH_EXYNOS3250 ||
     data->soc == SOC_ARCH_EXYNOS4412 ||
     data->soc == SOC_ARCH_EXYNOS5250) {
  if (data->soc == SOC_ARCH_EXYNOS3250) {
   ctrl = readl(data->base + EXYNOS_TMU_TRIMINFO_CON1);
   ctrl |= EXYNOS_TRIMINFO_RELOAD_ENABLE;
   writel(ctrl, data->base + EXYNOS_TMU_TRIMINFO_CON1);
  }
  ctrl = readl(data->base + EXYNOS_TMU_TRIMINFO_CON2);
  ctrl |= EXYNOS_TRIMINFO_RELOAD_ENABLE;
  writel(ctrl, data->base + EXYNOS_TMU_TRIMINFO_CON2);
 }


 if (data->soc == SOC_ARCH_EXYNOS5420_TRIMINFO)
  trim_info = readl(data->base_second + EXYNOS_TMU_REG_TRIMINFO);
 else
  trim_info = readl(data->base + EXYNOS_TMU_REG_TRIMINFO);

 sanitize_temp_error(data, trim_info);
}
