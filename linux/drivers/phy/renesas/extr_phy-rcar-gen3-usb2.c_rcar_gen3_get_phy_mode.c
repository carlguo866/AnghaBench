
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gen3_chan {int dummy; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int PHY_MODE_USB_DEVICE ;
 int PHY_MODE_USB_HOST ;
 scalar_t__ rcar_gen3_is_host (struct rcar_gen3_chan*) ;

__attribute__((used)) static enum phy_mode rcar_gen3_get_phy_mode(struct rcar_gen3_chan *ch)
{
 if (rcar_gen3_is_host(ch))
  return PHY_MODE_USB_HOST;

 return PHY_MODE_USB_DEVICE;
}
