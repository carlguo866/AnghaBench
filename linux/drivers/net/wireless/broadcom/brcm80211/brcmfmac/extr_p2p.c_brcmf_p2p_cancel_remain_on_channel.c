
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_if {int dummy; } ;


 int WL_P2P_DISC_ST_SCAN ;
 int brcmf_p2p_notify_listen_complete (struct brcmf_if*,int *,int *) ;
 int brcmf_p2p_set_discover_state (struct brcmf_if*,int ,int ,int ) ;

void brcmf_p2p_cancel_remain_on_channel(struct brcmf_if *ifp)
{
 if (!ifp)
  return;
 brcmf_p2p_set_discover_state(ifp, WL_P2P_DISC_ST_SCAN, 0, 0);
 brcmf_p2p_notify_listen_complete(ifp, ((void*)0), ((void*)0));
}
