
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi {int dummy; } ;
struct ath6kl_vif {int dummy; } ;


 int ath6kl_tgt_stats_event (struct ath6kl_vif*,int *,int) ;

__attribute__((used)) static int ath6kl_wmi_stats_event_rx(struct wmi *wmi, u8 *datap, int len,
         struct ath6kl_vif *vif)
{
 ath6kl_tgt_stats_event(vif, datap, len);

 return 0;
}
