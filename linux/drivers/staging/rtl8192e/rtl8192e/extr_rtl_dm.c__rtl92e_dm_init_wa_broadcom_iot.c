
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt_hi_throughput {int bWAIotBroadcom; int WAIotTH; } ;
struct r8192_priv {TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct rt_hi_throughput* pHTInfo; } ;


 int WAIotTHVal ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_dm_init_wa_broadcom_iot(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv((struct net_device *)dev);
 struct rt_hi_throughput *pHTInfo = priv->rtllib->pHTInfo;

 pHTInfo->bWAIotBroadcom = 0;
 pHTInfo->WAIotTH = WAIotTHVal;
}
