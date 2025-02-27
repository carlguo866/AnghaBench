
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsldma_chan {int dummy; } ;


 int BUG_ON (int) ;
 int FSL_DMA_MR_BWC_MASK ;
 int __ilog2 (int) ;
 int get_mr (struct fsldma_chan*) ;
 int set_mr (struct fsldma_chan*,int) ;

__attribute__((used)) static void fsl_chan_set_request_count(struct fsldma_chan *chan, int size)
{
 u32 mode;

 BUG_ON(size > 1024);

 mode = get_mr(chan);
 mode &= ~FSL_DMA_MR_BWC_MASK;
 mode |= (__ilog2(size) << 24) & FSL_DMA_MR_BWC_MASK;

 set_mr(chan, mode);
}
