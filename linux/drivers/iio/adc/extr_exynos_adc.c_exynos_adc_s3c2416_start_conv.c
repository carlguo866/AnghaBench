
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct exynos_adc {int regs; } ;


 unsigned long ADC_CON_EN_START ;
 int ADC_S3C2410_MUX (int ) ;
 unsigned long ADC_S3C2416_CON_RES_SEL ;
 int ADC_V1_CON (int ) ;
 unsigned long readl (int ) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static void exynos_adc_s3c2416_start_conv(struct exynos_adc *info,
       unsigned long addr)
{
 u32 con1;


 con1 = readl(ADC_V1_CON(info->regs));
 con1 |= ADC_S3C2416_CON_RES_SEL;
 writel(con1, ADC_V1_CON(info->regs));


 writel(addr, ADC_S3C2410_MUX(info->regs));

 con1 = readl(ADC_V1_CON(info->regs));
 writel(con1 | ADC_CON_EN_START, ADC_V1_CON(info->regs));
}
