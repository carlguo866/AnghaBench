
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_virt_device {int real_port; TYPE_2__* tt_info; } ;
struct TYPE_3__ {int bw_used; } ;
struct xhci_root_port_bw_info {int num_active_tts; TYPE_1__ bw_table; } ;
struct xhci_hcd {struct xhci_root_port_bw_info* rh_bw; } ;
struct TYPE_4__ {scalar_t__ active_eps; } ;


 scalar_t__ TT_HS_OVERHEAD ;

void xhci_update_tt_active_eps(struct xhci_hcd *xhci,
  struct xhci_virt_device *virt_dev,
  int old_active_eps)
{
 struct xhci_root_port_bw_info *rh_bw_info;
 if (!virt_dev->tt_info)
  return;

 rh_bw_info = &xhci->rh_bw[virt_dev->real_port - 1];
 if (old_active_eps == 0 &&
    virt_dev->tt_info->active_eps != 0) {
  rh_bw_info->num_active_tts += 1;
  rh_bw_info->bw_table.bw_used += TT_HS_OVERHEAD;
 } else if (old_active_eps != 0 &&
    virt_dev->tt_info->active_eps == 0) {
  rh_bw_info->num_active_tts -= 1;
  rh_bw_info->bw_table.bw_used -= TT_HS_OVERHEAD;
 }
}
