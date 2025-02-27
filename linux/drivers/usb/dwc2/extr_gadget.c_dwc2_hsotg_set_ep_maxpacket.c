
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_2__ {unsigned int maxpacket; } ;
struct dwc2_hsotg_ep {int mc; TYPE_1__ ep; } ;
struct dwc2_hsotg {int dev; } ;


 int DIEPCTL (unsigned int) ;
 int DOEPCTL (unsigned int) ;
 unsigned int DXEPCTL_MPS_MASK ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;
 unsigned int dwc2_hsotg_ep0_mps (unsigned int) ;
 unsigned int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,unsigned int,int ) ;
 struct dwc2_hsotg_ep* index_to_ep (struct dwc2_hsotg*,unsigned int,unsigned int) ;

__attribute__((used)) static void dwc2_hsotg_set_ep_maxpacket(struct dwc2_hsotg *hsotg,
     unsigned int ep, unsigned int mps,
     unsigned int mc, unsigned int dir_in)
{
 struct dwc2_hsotg_ep *hs_ep;
 u32 reg;

 hs_ep = index_to_ep(hsotg, ep, dir_in);
 if (!hs_ep)
  return;

 if (ep == 0) {
  u32 mps_bytes = mps;


  mps = dwc2_hsotg_ep0_mps(mps_bytes);
  if (mps > 3)
   goto bad_mps;
  hs_ep->ep.maxpacket = mps_bytes;
  hs_ep->mc = 1;
 } else {
  if (mps > 1024)
   goto bad_mps;
  hs_ep->mc = mc;
  if (mc > 3)
   goto bad_mps;
  hs_ep->ep.maxpacket = mps;
 }

 if (dir_in) {
  reg = dwc2_readl(hsotg, DIEPCTL(ep));
  reg &= ~DXEPCTL_MPS_MASK;
  reg |= mps;
  dwc2_writel(hsotg, reg, DIEPCTL(ep));
 } else {
  reg = dwc2_readl(hsotg, DOEPCTL(ep));
  reg &= ~DXEPCTL_MPS_MASK;
  reg |= mps;
  dwc2_writel(hsotg, reg, DOEPCTL(ep));
 }

 return;

bad_mps:
 dev_err(hsotg->dev, "ep%d: bad mps of %d\n", ep, mps);
}
