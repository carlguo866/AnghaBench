
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cmd; TYPE_1__* ops; } ;
struct ath10k {TYPE_3__ wmi; } ;
struct TYPE_5__ {int pdev_enable_adaptive_cca_cmdid; } ;
struct TYPE_4__ {struct sk_buff* (* gen_pdev_enable_adaptive_cca ) (struct ath10k*,int ,int ,int ) ;} ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int ath10k_wmi_cmd_send (struct ath10k*,struct sk_buff*,int ) ;
 struct sk_buff* stub1 (struct ath10k*,int ,int ,int ) ;

__attribute__((used)) static inline int
ath10k_wmi_pdev_enable_adaptive_cca(struct ath10k *ar, u8 enable,
        u32 detect_level, u32 detect_margin)
{
 struct sk_buff *skb;

 if (!ar->wmi.ops->gen_pdev_enable_adaptive_cca)
  return -EOPNOTSUPP;

 skb = ar->wmi.ops->gen_pdev_enable_adaptive_cca(ar, enable,
       detect_level,
       detect_margin);

 if (IS_ERR(skb))
  return PTR_ERR(skb);

 return ath10k_wmi_cmd_send(ar, skb,
       ar->wmi.cmd->pdev_enable_adaptive_cca_cmdid);
}
