
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct wmi_sta_keepalive_arg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cmd; TYPE_1__* ops; } ;
struct ath10k {TYPE_3__ wmi; } ;
struct TYPE_5__ {int sta_keepalive_cmd; } ;
struct TYPE_4__ {struct sk_buff* (* gen_sta_keepalive ) (struct ath10k*,struct wmi_sta_keepalive_arg const*) ;} ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int ath10k_wmi_cmd_send (struct ath10k*,struct sk_buff*,int ) ;
 struct sk_buff* stub1 (struct ath10k*,struct wmi_sta_keepalive_arg const*) ;

__attribute__((used)) static inline int
ath10k_wmi_sta_keepalive(struct ath10k *ar,
    const struct wmi_sta_keepalive_arg *arg)
{
 struct sk_buff *skb;
 u32 cmd_id;

 if (!ar->wmi.ops->gen_sta_keepalive)
  return -EOPNOTSUPP;

 skb = ar->wmi.ops->gen_sta_keepalive(ar, arg);
 if (IS_ERR(skb))
  return PTR_ERR(skb);

 cmd_id = ar->wmi.cmd->sta_keepalive_cmd;
 return ath10k_wmi_cmd_send(ar, skb, cmd_id);
}
