
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cmd; TYPE_1__* ops; } ;
struct ath10k {TYPE_3__ wmi; } ;
typedef enum wmi_wow_wakeup_event { ____Placeholder_wmi_wow_wakeup_event } wmi_wow_wakeup_event ;
struct TYPE_5__ {int wow_enable_disable_wake_event_cmdid; } ;
struct TYPE_4__ {struct sk_buff* (* gen_wow_add_wakeup_event ) (struct ath10k*,int ,int,int ) ;} ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int ath10k_wmi_cmd_send (struct ath10k*,struct sk_buff*,int ) ;
 struct sk_buff* stub1 (struct ath10k*,int ,int,int ) ;

__attribute__((used)) static inline int
ath10k_wmi_wow_add_wakeup_event(struct ath10k *ar, u32 vdev_id,
    enum wmi_wow_wakeup_event event,
    u32 enable)
{
 struct sk_buff *skb;
 u32 cmd_id;

 if (!ar->wmi.ops->gen_wow_add_wakeup_event)
  return -EOPNOTSUPP;

 skb = ar->wmi.ops->gen_wow_add_wakeup_event(ar, vdev_id, event, enable);
 if (IS_ERR(skb))
  return PTR_ERR(skb);

 cmd_id = ar->wmi.cmd->wow_enable_disable_wake_event_cmdid;
 return ath10k_wmi_cmd_send(ar, skb, cmd_id);
}
