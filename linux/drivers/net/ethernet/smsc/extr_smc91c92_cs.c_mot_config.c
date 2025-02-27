
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_private {scalar_t__ base; } ;
struct pcmcia_device {TYPE_1__** resource; struct net_device* priv; } ;
struct net_device {unsigned int base_addr; } ;
struct TYPE_2__ {unsigned int start; } ;


 scalar_t__ CISREG_COR ;
 scalar_t__ CISREG_IOBASE_0 ;
 scalar_t__ CISREG_IOBASE_1 ;
 scalar_t__ MOT_LAN ;
 unsigned int MOT_NORMAL ;
 scalar_t__ MOT_UART ;
 int mdelay (int) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static void mot_config(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    struct smc_private *smc = netdev_priv(dev);
    unsigned int ioaddr = dev->base_addr;
    unsigned int iouart = link->resource[1]->start;


    writeb(iouart & 0xff, smc->base + MOT_UART + CISREG_IOBASE_0);
    writeb((iouart >> 8) & 0xff, smc->base + MOT_UART + CISREG_IOBASE_1);
    writeb(MOT_NORMAL, smc->base + MOT_UART + CISREG_COR);


    writeb(ioaddr & 0xff, smc->base + MOT_LAN + CISREG_IOBASE_0);
    writeb((ioaddr >> 8) & 0xff, smc->base + MOT_LAN + CISREG_IOBASE_1);
    writeb(MOT_NORMAL, smc->base + MOT_LAN + CISREG_COR);


    mdelay(100);
}
