
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int state; int device_id; } ;
struct TYPE_8__ {TYPE_3__ req; } ;
struct TYPE_6__ {int val_buf_size; int val_len; int tag; } ;
struct TYPE_5__ {int buf_size; int code; } ;
struct msg_set_power_state {scalar_t__ end_tag; TYPE_4__ body; TYPE_2__ tag_hdr; TYPE_1__ hdr; } ;
typedef int msg ;
typedef scalar_t__ boolean_t ;


 int BCM2835_MBOX_CODE_REQ ;
 int BCM2835_MBOX_POWER_ON ;
 int BCM2835_MBOX_POWER_WAIT ;
 int BCM2835_MBOX_TAG_SET_POWER_STATE ;
 int bcm2835_mbox_property (struct msg_set_power_state*,int) ;
 int memset (struct msg_set_power_state*,int ,int) ;

int
bcm2835_mbox_set_power_state(uint32_t device_id, boolean_t on)
{
 struct msg_set_power_state msg;
 int err;

 memset(&msg, 0, sizeof(msg));
 msg.hdr.buf_size = sizeof(msg);
 msg.hdr.code = BCM2835_MBOX_CODE_REQ;
 msg.tag_hdr.tag = BCM2835_MBOX_TAG_SET_POWER_STATE;
 msg.tag_hdr.val_buf_size = sizeof(msg.body);
 msg.tag_hdr.val_len = sizeof(msg.body.req);
 msg.body.req.device_id = device_id;
 msg.body.req.state = (on ? BCM2835_MBOX_POWER_ON : 0) |
     BCM2835_MBOX_POWER_WAIT;
 msg.end_tag = 0;

 err = bcm2835_mbox_property(&msg, sizeof(msg));

 return (err);
}
