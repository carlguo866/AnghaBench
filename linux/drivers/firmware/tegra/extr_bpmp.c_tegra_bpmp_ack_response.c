
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_ops {int (* ack_response ) (struct tegra_bpmp_channel*) ;} ;
struct tegra_bpmp_channel {int dummy; } ;


 struct tegra_bpmp_ops* channel_to_ops (struct tegra_bpmp_channel*) ;
 int stub1 (struct tegra_bpmp_channel*) ;

__attribute__((used)) static int tegra_bpmp_ack_response(struct tegra_bpmp_channel *channel)
{
 const struct tegra_bpmp_ops *ops = channel_to_ops(channel);

 return ops->ack_response(channel);
}
