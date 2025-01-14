
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdc_chan {int dummy; } ;


 int MDC_CMDS_PROCESSED ;
 int MDC_CMDS_PROCESSED_CMDS_DONE_MASK ;
 int MDC_CMDS_PROCESSED_CMDS_DONE_SHIFT ;
 int MDC_CMDS_PROCESSED_CMDS_PROCESSED_MASK ;
 int MDC_CMDS_PROCESSED_CMDS_PROCESSED_SHIFT ;
 int MDC_CMDS_PROCESSED_INT_ACTIVE ;
 int mdc_chan_readl (struct mdc_chan*,int ) ;
 int mdc_chan_writel (struct mdc_chan*,int,int ) ;

__attribute__((used)) static unsigned int mdc_get_new_events(struct mdc_chan *mchan)
{
 u32 val, processed, done1, done2;
 unsigned int ret;

 val = mdc_chan_readl(mchan, MDC_CMDS_PROCESSED);
 processed = (val >> MDC_CMDS_PROCESSED_CMDS_PROCESSED_SHIFT) &
    MDC_CMDS_PROCESSED_CMDS_PROCESSED_MASK;





 do {
  val = mdc_chan_readl(mchan, MDC_CMDS_PROCESSED);

  done1 = (val >> MDC_CMDS_PROCESSED_CMDS_DONE_SHIFT) &
   MDC_CMDS_PROCESSED_CMDS_DONE_MASK;

  val &= ~((MDC_CMDS_PROCESSED_CMDS_PROCESSED_MASK <<
     MDC_CMDS_PROCESSED_CMDS_PROCESSED_SHIFT) |
    MDC_CMDS_PROCESSED_INT_ACTIVE);

  val |= done1 << MDC_CMDS_PROCESSED_CMDS_PROCESSED_SHIFT;

  mdc_chan_writel(mchan, val, MDC_CMDS_PROCESSED);

  val = mdc_chan_readl(mchan, MDC_CMDS_PROCESSED);

  done2 = (val >> MDC_CMDS_PROCESSED_CMDS_DONE_SHIFT) &
   MDC_CMDS_PROCESSED_CMDS_DONE_MASK;
 } while (done1 != done2);

 if (done1 >= processed)
  ret = done1 - processed;
 else
  ret = ((MDC_CMDS_PROCESSED_CMDS_PROCESSED_MASK + 1) -
   processed) + done1;

 return ret;
}
