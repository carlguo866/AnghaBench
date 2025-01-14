
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_device {TYPE_1__* bw_table; } ;
struct xhci_hcd {int dummy; } ;
struct TYPE_2__ {unsigned int ss_bw_in; unsigned int ss_bw_out; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int ENOMEM ;
 unsigned int SS_BW_LIMIT_IN ;
 unsigned int SS_BW_LIMIT_OUT ;
 unsigned int SS_BW_RESERVED ;

__attribute__((used)) static int xhci_check_ss_bw(struct xhci_hcd *xhci,
  struct xhci_virt_device *virt_dev)
{
 unsigned int bw_reserved;

 bw_reserved = DIV_ROUND_UP(SS_BW_RESERVED*SS_BW_LIMIT_IN, 100);
 if (virt_dev->bw_table->ss_bw_in > (SS_BW_LIMIT_IN - bw_reserved))
  return -ENOMEM;

 bw_reserved = DIV_ROUND_UP(SS_BW_RESERVED*SS_BW_LIMIT_OUT, 100);
 if (virt_dev->bw_table->ss_bw_out > (SS_BW_LIMIT_OUT - bw_reserved))
  return -ENOMEM;

 return 0;
}
