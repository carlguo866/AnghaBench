
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ath10k_radar_found_info {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cmd; TYPE_1__* ops; } ;
struct ath10k {TYPE_3__ wmi; } ;
struct TYPE_5__ {int radar_found_cmdid; } ;
struct TYPE_4__ {struct sk_buff* (* gen_radar_found ) (struct ath10k*,struct ath10k_radar_found_info const*) ;} ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int ath10k_wmi_cmd_send (struct ath10k*,struct sk_buff*,int ) ;
 struct sk_buff* stub1 (struct ath10k*,struct ath10k_radar_found_info const*) ;

__attribute__((used)) static inline int
ath10k_wmi_report_radar_found(struct ath10k *ar,
         const struct ath10k_radar_found_info *arg)
{
 struct sk_buff *skb;

 if (!ar->wmi.ops->gen_radar_found)
  return -EOPNOTSUPP;

 skb = ar->wmi.ops->gen_radar_found(ar, arg);
 if (IS_ERR(skb))
  return PTR_ERR(skb);

 return ath10k_wmi_cmd_send(ar, skb,
       ar->wmi.cmd->radar_found_cmdid);
}
