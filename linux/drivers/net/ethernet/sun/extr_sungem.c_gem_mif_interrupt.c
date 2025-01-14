
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct gem {scalar_t__ regs; } ;


 scalar_t__ MIF_STATUS ;
 int MIF_STATUS_DATA ;
 int MIF_STATUS_STAT ;
 int gem_handle_mif_event (struct gem*,int,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int gem_mif_interrupt(struct net_device *dev, struct gem *gp, u32 gem_status)
{
 u32 mif_status = readl(gp->regs + MIF_STATUS);
 u32 reg_val, changed_bits;

 reg_val = (mif_status & MIF_STATUS_DATA) >> 16;
 changed_bits = (mif_status & MIF_STATUS_STAT);

 gem_handle_mif_event(gp, reg_val, changed_bits);

 return 0;
}
