
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ips_driver {int mcp_temp_limit; int mcp_avg_temp; int cpu_avg_power; int mch_avg_power; int mcp_power_limit; int turbo_status_lock; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,char const*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool mcp_exceeded(struct ips_driver *ips)
{
 unsigned long flags;
 bool ret = 0;
 u32 temp_limit;
 u32 avg_power;
 const char *msg = "MCP limit exceeded: ";

 spin_lock_irqsave(&ips->turbo_status_lock, flags);

 temp_limit = ips->mcp_temp_limit * 100;
 if (ips->mcp_avg_temp > temp_limit) {
  dev_info(&ips->dev->dev,
   "%sAvg temp %u, limit %u\n", msg, ips->mcp_avg_temp,
   temp_limit);
  ret = 1;
 }

 avg_power = ips->cpu_avg_power + ips->mch_avg_power;
 if (avg_power > ips->mcp_power_limit) {
  dev_info(&ips->dev->dev,
   "%sAvg power %u, limit %u\n", msg, avg_power,
   ips->mcp_power_limit);
  ret = 1;
 }

 spin_unlock_irqrestore(&ips->turbo_status_lock, flags);

 return ret;
}
