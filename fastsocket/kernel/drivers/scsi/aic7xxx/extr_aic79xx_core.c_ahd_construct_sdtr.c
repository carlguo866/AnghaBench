
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ahd_softc {int msgout_len; scalar_t__ msgout_index; scalar_t__ msgout_buf; } ;
struct ahd_devinfo {int channel; int target; int lun; } ;


 scalar_t__ AHD_ASYNC_XFER_PERIOD ;
 char* ahd_name (struct ahd_softc*) ;
 scalar_t__ bootverbose ;
 int printf (char*,char*,int,int,int,scalar_t__,scalar_t__) ;
 scalar_t__ spi_populate_sync_msg (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ahd_construct_sdtr(struct ahd_softc *ahd, struct ahd_devinfo *devinfo,
     u_int period, u_int offset)
{
 if (offset == 0)
  period = AHD_ASYNC_XFER_PERIOD;
 ahd->msgout_index += spi_populate_sync_msg(
   ahd->msgout_buf + ahd->msgout_index, period, offset);
 ahd->msgout_len += 5;
 if (bootverbose) {
  printf("(%s:%c:%d:%d): Sending SDTR period %x, offset %x\n",
         ahd_name(ahd), devinfo->channel, devinfo->target,
         devinfo->lun, period, offset);
 }
}
