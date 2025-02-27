
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sprd_mcdt_dev {int dummy; } ;


 int MCDT_ADC0_WTMK ;
 int MCDT_CH_FIFO_AE_MASK ;
 int MCDT_CH_FIFO_AE_SHIFT ;
 int MCDT_CH_FIFO_AF_MASK ;
 int sprd_mcdt_update (struct sprd_mcdt_dev*,int,int,int) ;

__attribute__((used)) static void sprd_mcdt_adc_set_watermark(struct sprd_mcdt_dev *mcdt, u8 channel,
     u32 full, u32 empty)
{
 u32 reg = MCDT_ADC0_WTMK + channel * 4;
 u32 water_mark =
  (empty << MCDT_CH_FIFO_AE_SHIFT) & MCDT_CH_FIFO_AE_MASK;

 water_mark |= full & MCDT_CH_FIFO_AF_MASK;
 sprd_mcdt_update(mcdt, reg, water_mark,
    MCDT_CH_FIFO_AE_MASK | MCDT_CH_FIFO_AF_MASK);
}
