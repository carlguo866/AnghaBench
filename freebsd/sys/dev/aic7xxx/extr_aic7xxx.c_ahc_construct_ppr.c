
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ahc_softc {int msgout_len; int msgout_index; scalar_t__* msgout_buf; } ;
struct ahc_devinfo {int channel; int target; int lun; } ;


 scalar_t__ AHC_ASYNC_XFER_PERIOD ;
 scalar_t__ MSG_EXTENDED ;
 scalar_t__ MSG_EXT_PPR ;
 scalar_t__ MSG_EXT_PPR_LEN ;
 char* ahc_name (struct ahc_softc*) ;
 scalar_t__ bootverbose ;
 int printf (char*,char*,int,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ahc_construct_ppr(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
    u_int period, u_int offset, u_int bus_width,
    u_int ppr_options)
{
 if (offset == 0)
  period = AHC_ASYNC_XFER_PERIOD;
 ahc->msgout_buf[ahc->msgout_index++] = MSG_EXTENDED;
 ahc->msgout_buf[ahc->msgout_index++] = MSG_EXT_PPR_LEN;
 ahc->msgout_buf[ahc->msgout_index++] = MSG_EXT_PPR;
 ahc->msgout_buf[ahc->msgout_index++] = period;
 ahc->msgout_buf[ahc->msgout_index++] = 0;
 ahc->msgout_buf[ahc->msgout_index++] = offset;
 ahc->msgout_buf[ahc->msgout_index++] = bus_width;
 ahc->msgout_buf[ahc->msgout_index++] = ppr_options;
 ahc->msgout_len += 8;
 if (bootverbose) {
  printf("(%s:%c:%d:%d): Sending PPR bus_width %x, period %x, "
         "offset %x, ppr_options %x\n", ahc_name(ahc),
         devinfo->channel, devinfo->target, devinfo->lun,
         bus_width, period, offset, ppr_options);
 }
}
