
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct rio_dev {int swpinfo; TYPE_1__* rswitch; } ;
struct TYPE_2__ {struct rio_dev** nextdev; } ;


 int RIO_DEV_PORT_N_ACK_STS_CSR (struct rio_dev*,size_t) ;
 int RIO_DEV_PORT_N_ERR_STS_CSR (struct rio_dev*,size_t) ;
 size_t RIO_GET_PORT_NUM (int ) ;
 size_t RIO_PORT_N_ACK_INBOUND ;
 size_t RIO_PORT_N_ACK_OUTBOUND ;
 size_t RIO_PORT_N_ACK_OUTSTAND ;
 size_t RIO_PORT_N_ERR_STS_INP_ES ;
 size_t RIO_PORT_N_ERR_STS_OUT_ES ;
 size_t RIO_PORT_N_MNT_RSP_ASTAT ;
 size_t RIO_PORT_N_MNT_RSP_LSTAT ;
 int pr_debug (char*,...) ;
 scalar_t__ rio_get_input_status (struct rio_dev*,size_t,size_t*) ;
 int rio_read_config_32 (struct rio_dev*,int ,size_t*) ;
 int rio_write_config_32 (struct rio_dev*,int ,size_t) ;
 int udelay (int) ;

__attribute__((used)) static int rio_clr_err_stopped(struct rio_dev *rdev, u32 pnum, u32 err_status)
{
 struct rio_dev *nextdev = rdev->rswitch->nextdev[pnum];
 u32 regval;
 u32 far_ackid, far_linkstat, near_ackid;

 if (err_status == 0)
  rio_read_config_32(rdev,
   RIO_DEV_PORT_N_ERR_STS_CSR(rdev, pnum),
   &err_status);

 if (err_status & RIO_PORT_N_ERR_STS_OUT_ES) {
  pr_debug("RIO_EM: servicing Output Error-Stopped state\n");



  if (rio_get_input_status(rdev, pnum, &regval)) {
   pr_debug("RIO_EM: Input-status response timeout\n");
   goto rd_err;
  }

  pr_debug("RIO_EM: SP%d Input-status response=0x%08x\n",
    pnum, regval);
  far_ackid = (regval & RIO_PORT_N_MNT_RSP_ASTAT) >> 5;
  far_linkstat = regval & RIO_PORT_N_MNT_RSP_LSTAT;
  rio_read_config_32(rdev,
   RIO_DEV_PORT_N_ACK_STS_CSR(rdev, pnum),
   &regval);
  pr_debug("RIO_EM: SP%d_ACK_STS_CSR=0x%08x\n", pnum, regval);
  near_ackid = (regval & RIO_PORT_N_ACK_INBOUND) >> 24;
  pr_debug("RIO_EM: SP%d far_ackID=0x%02x far_linkstat=0x%02x" " near_ackID=0x%02x\n",

   pnum, far_ackid, far_linkstat, near_ackid);





  if ((far_ackid != ((regval & RIO_PORT_N_ACK_OUTSTAND) >> 8)) ||
      (far_ackid != (regval & RIO_PORT_N_ACK_OUTBOUND))) {



   rio_write_config_32(rdev,
    RIO_DEV_PORT_N_ACK_STS_CSR(rdev, pnum),
    (near_ackid << 24) |
     (far_ackid << 8) | far_ackid);



   far_ackid++;
   if (!nextdev) {
    pr_debug("RIO_EM: nextdev pointer == NULL\n");
    goto rd_err;
   }

   rio_write_config_32(nextdev,
    RIO_DEV_PORT_N_ACK_STS_CSR(nextdev,
     RIO_GET_PORT_NUM(nextdev->swpinfo)),
    (far_ackid << 24) |
    (near_ackid << 8) | near_ackid);
  }
rd_err:
  rio_read_config_32(rdev, RIO_DEV_PORT_N_ERR_STS_CSR(rdev, pnum),
       &err_status);
  pr_debug("RIO_EM: SP%d_ERR_STS_CSR=0x%08x\n", pnum, err_status);
 }

 if ((err_status & RIO_PORT_N_ERR_STS_INP_ES) && nextdev) {
  pr_debug("RIO_EM: servicing Input Error-Stopped state\n");
  rio_get_input_status(nextdev,
         RIO_GET_PORT_NUM(nextdev->swpinfo), ((void*)0));
  udelay(50);

  rio_read_config_32(rdev, RIO_DEV_PORT_N_ERR_STS_CSR(rdev, pnum),
       &err_status);
  pr_debug("RIO_EM: SP%d_ERR_STS_CSR=0x%08x\n", pnum, err_status);
 }

 return (err_status & (RIO_PORT_N_ERR_STS_OUT_ES |
         RIO_PORT_N_ERR_STS_INP_ES)) ? 1 : 0;
}
