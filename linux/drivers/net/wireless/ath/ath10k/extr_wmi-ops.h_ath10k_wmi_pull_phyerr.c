
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wmi_phyerr_ev_arg {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ wmi; } ;
struct TYPE_3__ {int (* pull_phyerr ) (struct ath10k*,void const*,int,struct wmi_phyerr_ev_arg*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct ath10k*,void const*,int,struct wmi_phyerr_ev_arg*) ;

__attribute__((used)) static inline int
ath10k_wmi_pull_phyerr(struct ath10k *ar, const void *phyerr_buf,
         int left_len, struct wmi_phyerr_ev_arg *arg)
{
 if (!ar->wmi.ops->pull_phyerr)
  return -EOPNOTSUPP;

 return ar->wmi.ops->pull_phyerr(ar, phyerr_buf, left_len, arg);
}
