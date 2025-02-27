
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ns83820 {scalar_t__ base; } ;
struct net_device {int dummy; } ;


 scalar_t__ CFG ;
 int CFG_LNKSTS ;
 struct ns83820* PRIV (struct net_device*) ;
 int SPDSTS_POLARITY ;
 int readl (scalar_t__) ;

__attribute__((used)) static u32 ns83820_get_link(struct net_device *ndev)
{
 struct ns83820 *dev = PRIV(ndev);
 u32 cfg = readl(dev->base + CFG) ^ SPDSTS_POLARITY;
 return cfg & CFG_LNKSTS ? 1 : 0;
}
