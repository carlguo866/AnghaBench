
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_9__ {scalar_t__ rate_hz; } ;
struct TYPE_8__ {scalar_t__ rate_hz; scalar_t__ clock_id; } ;
struct TYPE_10__ {TYPE_4__ resp; TYPE_3__ req; } ;
struct TYPE_7__ {int val_buf_size; int val_len; void* tag; } ;
struct TYPE_6__ {int buf_size; void* code; } ;
struct msg_set_clock_rate {TYPE_5__ body; scalar_t__ end_tag; TYPE_2__ tag_hdr; TYPE_1__ hdr; } ;
struct bcm2835_cpufreq_softc {int dev; } ;
typedef int msg ;


 scalar_t__ BCM2835_MBOX_CLOCK_ID_CORE ;
 void* BCM2835_MBOX_CODE_REQ ;
 void* BCM2835_MBOX_TAG_SET_CLOCK_RATE ;
 int DELAY (int ) ;
 int DPRINTF (char*,int) ;
 int MSG_ERROR ;
 int TRANSITION_LATENCY ;
 int bcm2835_mbox_property (struct msg_set_clock_rate*,int) ;
 int device_printf (int ,char*,scalar_t__) ;
 int memset (struct msg_set_clock_rate*,int ,int) ;

__attribute__((used)) static int
bcm2835_cpufreq_set_clock_rate(struct bcm2835_cpufreq_softc *sc,
    uint32_t clock_id, uint32_t rate_hz)
{
 struct msg_set_clock_rate msg;
 int rate;
 int err;
 memset(&msg, 0, sizeof(msg));
 msg.hdr.buf_size = sizeof(msg);
 msg.hdr.code = BCM2835_MBOX_CODE_REQ;
 msg.tag_hdr.tag = BCM2835_MBOX_TAG_SET_CLOCK_RATE;
 msg.tag_hdr.val_buf_size = sizeof(msg.body);
 msg.tag_hdr.val_len = sizeof(msg.body.req);
 msg.body.req.clock_id = clock_id;
 msg.body.req.rate_hz = rate_hz;
 msg.end_tag = 0;


 err = bcm2835_mbox_property(&msg, sizeof(msg));
 if (err) {
  device_printf(sc->dev, "can't set clock rate (id=%u)\n",
      clock_id);
  return (MSG_ERROR);
 }


 if (clock_id == BCM2835_MBOX_CLOCK_ID_CORE) {

  DELAY(TRANSITION_LATENCY);







  memset(&msg, 0, sizeof(msg));
  msg.hdr.buf_size = sizeof(msg);
  msg.hdr.code = BCM2835_MBOX_CODE_REQ;
  msg.tag_hdr.tag = BCM2835_MBOX_TAG_SET_CLOCK_RATE;
  msg.tag_hdr.val_buf_size = sizeof(msg.body);
  msg.tag_hdr.val_len = sizeof(msg.body.req);
  msg.body.req.clock_id = clock_id;
  msg.body.req.rate_hz = rate_hz;
  msg.end_tag = 0;


  err = bcm2835_mbox_property(&msg, sizeof(msg));
  if (err) {
   device_printf(sc->dev,
       "can't set clock rate (id=%u)\n", clock_id);
   return (MSG_ERROR);
  }
 }


 rate = (int)msg.body.resp.rate_hz;
 DPRINTF("clock = %d(Hz)\n", rate);
 return (rate);
}
