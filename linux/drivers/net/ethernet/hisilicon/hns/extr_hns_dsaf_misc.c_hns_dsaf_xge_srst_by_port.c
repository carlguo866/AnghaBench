
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct dsaf_device {TYPE_1__** mac_cb; } ;
struct TYPE_2__ {int port_rst_off; } ;


 size_t DSAF_SUB_SC_XGE_RESET_DREQ_REG ;
 size_t DSAF_SUB_SC_XGE_RESET_REQ_REG ;
 size_t DSAF_XGE_NUM ;
 size_t RESET_REQ_OR_DREQ ;
 int dsaf_write_sub (struct dsaf_device*,size_t,size_t) ;

__attribute__((used)) static void hns_dsaf_xge_srst_by_port(struct dsaf_device *dsaf_dev, u32 port,
          bool dereset)
{
 u32 reg_val = 0;
 u32 reg_addr;

 if (port >= DSAF_XGE_NUM)
  return;

 reg_val |= RESET_REQ_OR_DREQ;
 reg_val |= 0x2082082 << dsaf_dev->mac_cb[port]->port_rst_off;

 if (!dereset)
  reg_addr = DSAF_SUB_SC_XGE_RESET_REQ_REG;
 else
  reg_addr = DSAF_SUB_SC_XGE_RESET_DREQ_REG;

 dsaf_write_sub(dsaf_dev, reg_addr, reg_val);
}
