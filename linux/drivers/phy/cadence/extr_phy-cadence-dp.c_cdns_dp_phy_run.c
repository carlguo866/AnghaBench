
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct cdns_dp_phy {int num_lanes; scalar_t__ base; int dev; } ;


 int ETIMEDOUT ;
 scalar_t__ PHY_PMA_XCVR_PLLCLK_EN_ACK ;
 scalar_t__ PHY_PMA_XCVR_POWER_STATE_ACK ;
 scalar_t__ PHY_PMA_XCVR_POWER_STATE_REQ ;
 int POLL_TIMEOUT_US ;
 int dev_err (int ,char*) ;
 int ndelay (int) ;
 int readl_poll_timeout (scalar_t__,unsigned int,int,int ,int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void cdns_dp_phy_run(struct cdns_dp_phy *cdns_phy)
{
 unsigned int read_val;
 u32 write_val1 = 0;
 u32 write_val2 = 0;
 u32 mask = 0;
 int ret;





 ret = readl_poll_timeout(cdns_phy->base + PHY_PMA_XCVR_PLLCLK_EN_ACK,
     read_val, read_val & 1, 0, POLL_TIMEOUT_US);
 if (ret == -ETIMEDOUT)
  dev_err(cdns_phy->dev,
   "timeout waiting for link PLL clock enable ack\n");

 ndelay(100);

 switch (cdns_phy->num_lanes) {

 case 1:
  write_val1 = 0x00000004;
  write_val2 = 0x00000001;
  mask = 0x0000003f;
  break;
 case 2:
  write_val1 = 0x00000404;
  write_val2 = 0x00000101;
  mask = 0x00003f3f;
  break;
 case 4:
  write_val1 = 0x04040404;
  write_val2 = 0x01010101;
  mask = 0x3f3f3f3f;
  break;
 }

 writel(write_val1, cdns_phy->base + PHY_PMA_XCVR_POWER_STATE_REQ);

 ret = readl_poll_timeout(cdns_phy->base + PHY_PMA_XCVR_POWER_STATE_ACK,
     read_val, (read_val & mask) == write_val1, 0,
     POLL_TIMEOUT_US);
 if (ret == -ETIMEDOUT)
  dev_err(cdns_phy->dev,
   "timeout waiting for link power state ack\n");

 writel(0, cdns_phy->base + PHY_PMA_XCVR_POWER_STATE_REQ);
 ndelay(100);

 writel(write_val2, cdns_phy->base + PHY_PMA_XCVR_POWER_STATE_REQ);

 ret = readl_poll_timeout(cdns_phy->base + PHY_PMA_XCVR_POWER_STATE_ACK,
     read_val, (read_val & mask) == write_val2, 0,
     POLL_TIMEOUT_US);
 if (ret == -ETIMEDOUT)
  dev_err(cdns_phy->dev,
   "timeout waiting for link power state ack\n");

 writel(0, cdns_phy->base + PHY_PMA_XCVR_POWER_STATE_REQ);
 ndelay(100);
}
