
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {unsigned int clock_ns; int clock_and_fout2; unsigned int clock_source; int rtsi_trig_direction_reg; scalar_t__ is_m_series; } ;
struct comedi_device {int class_dev; struct ni_private* private; } ;


 int EINVAL ;
 int NISTC_RTSI_TRIG_DIR_REG ;
 int NISTC_RTSI_TRIG_USE_CLK ;
 unsigned int NI_MIO_INTERNAL_CLOCK ;
 unsigned int NI_MIO_RTSI_CLOCK ;
 int NI_M_CLK_FOUT2_REG ;
 int NI_M_CLK_FOUT2_TIMEBASE1_PLL ;
 int NI_M_CLK_FOUT2_TIMEBASE3_PLL ;
 int NI_M_PLL_CTRL_REG ;
 unsigned int TIMEBASE_1_NS ;
 int dev_err (int ,char*) ;
 int ni_mseries_set_pll_master_clock (struct comedi_device*,unsigned int,unsigned int) ;
 int ni_stc_writew (struct comedi_device*,int ,int ) ;
 int ni_writew (struct comedi_device*,int,int ) ;

__attribute__((used)) static int ni_set_master_clock(struct comedi_device *dev,
          unsigned int source, unsigned int period_ns)
{
 struct ni_private *devpriv = dev->private;

 if (source == NI_MIO_INTERNAL_CLOCK) {
  devpriv->rtsi_trig_direction_reg &= ~NISTC_RTSI_TRIG_USE_CLK;
  ni_stc_writew(dev, devpriv->rtsi_trig_direction_reg,
         NISTC_RTSI_TRIG_DIR_REG);
  devpriv->clock_ns = TIMEBASE_1_NS;
  if (devpriv->is_m_series) {
   devpriv->clock_and_fout2 &=
       ~(NI_M_CLK_FOUT2_TIMEBASE1_PLL |
         NI_M_CLK_FOUT2_TIMEBASE3_PLL);
   ni_writew(dev, devpriv->clock_and_fout2,
      NI_M_CLK_FOUT2_REG);
   ni_writew(dev, 0, NI_M_PLL_CTRL_REG);
  }
  devpriv->clock_source = source;
 } else {
  if (devpriv->is_m_series) {
   return ni_mseries_set_pll_master_clock(dev, source,
              period_ns);
  } else {
   if (source == NI_MIO_RTSI_CLOCK) {
    devpriv->rtsi_trig_direction_reg |=
        NISTC_RTSI_TRIG_USE_CLK;
    ni_stc_writew(dev,
           devpriv->rtsi_trig_direction_reg,
           NISTC_RTSI_TRIG_DIR_REG);
    if (period_ns == 0) {
     dev_err(dev->class_dev,
      "we don't handle an unspecified clock period correctly yet, returning error\n");
     return -EINVAL;
    }
    devpriv->clock_ns = period_ns;
    devpriv->clock_source = source;
   } else {
    return -EINVAL;
   }
  }
 }
 return 3;
}
