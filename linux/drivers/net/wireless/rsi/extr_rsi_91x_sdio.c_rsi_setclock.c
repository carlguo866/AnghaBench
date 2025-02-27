
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct rsi_hw {scalar_t__ rsi_dev; } ;
struct rsi_91x_sdiodev {TYPE_3__* pfunction; } ;
struct TYPE_8__ {int clock; } ;
struct mmc_host {int f_max; TYPE_4__ ios; TYPE_1__* ops; } ;
struct TYPE_7__ {TYPE_2__* card; } ;
struct TYPE_6__ {struct mmc_host* host; } ;
struct TYPE_5__ {int (* set_ios ) (struct mmc_host*,TYPE_4__*) ;} ;


 int stub1 (struct mmc_host*,TYPE_4__*) ;

__attribute__((used)) static void rsi_setclock(struct rsi_hw *adapter, u32 freq)
{
 struct rsi_91x_sdiodev *dev =
  (struct rsi_91x_sdiodev *)adapter->rsi_dev;
 struct mmc_host *host = dev->pfunction->card->host;
 u32 clock;

 clock = freq * 1000;
 if (clock > host->f_max)
  clock = host->f_max;
 host->ios.clock = clock;
 host->ops->set_ios(host, &host->ios);
}
