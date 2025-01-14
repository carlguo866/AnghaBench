
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_s3c {TYPE_1__* pdev; struct clk** clk_bus; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int UINT_MAX ;
 unsigned long clk_get_rate (struct clk*) ;
 int dev_dbg (int *,char*,unsigned int,unsigned long,unsigned int,unsigned long) ;

__attribute__((used)) static unsigned int sdhci_s3c_consider_clock(struct sdhci_s3c *ourhost,
          unsigned int src,
          unsigned int wanted)
{
 unsigned long rate;
 struct clk *clksrc = ourhost->clk_bus[src];
 int div;

 if (!clksrc)
  return UINT_MAX;

 rate = clk_get_rate(clksrc);

 for (div = 1; div < 256; div *= 2) {
  if ((rate / div) <= wanted)
   break;
 }

 dev_dbg(&ourhost->pdev->dev, "clk %d: rate %ld, want %d, got %ld\n",
  src, rate, wanted, rate / div);

 return (wanted - (rate / div));
}
