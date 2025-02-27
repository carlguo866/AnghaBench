
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rc_dev {TYPE_1__* raw; } ;
struct rc5_sz_dec {int state; int count; int wanted_bits; int bits; } ;
struct ir_raw_event {int pulse; int duration; scalar_t__ reset; } ;
struct TYPE_2__ {int enabled_protocols; int prev_ev; struct rc5_sz_dec rc5_sz; } ;


 int EINVAL ;
 int IR_dprintk (int,char*,int,int,...) ;
 int RC5_BIT_END ;
 int RC5_BIT_START ;
 int RC5_SZ_NBITS ;
 int RC5_UNIT ;
 int RC_TYPE_RC5_SZ ;




 int TO_STR (int ) ;
 int TO_US (int ) ;
 int decrease_duration (struct ir_raw_event*,int ) ;
 int eq_margin (int ,int ,int) ;
 int geq_margin (int ,int,int) ;
 int is_timing_event (struct ir_raw_event) ;
 int is_transition (struct ir_raw_event*,int *) ;
 int rc_keydown (struct rc_dev*,int,int) ;

__attribute__((used)) static int ir_rc5_sz_decode(struct rc_dev *dev, struct ir_raw_event ev)
{
 struct rc5_sz_dec *data = &dev->raw->rc5_sz;
 u8 toggle, command, system;
 u32 scancode;

        if (!(dev->raw->enabled_protocols & RC_TYPE_RC5_SZ))
                return 0;

 if (!is_timing_event(ev)) {
  if (ev.reset)
   data->state = 128;
  return 0;
 }

 if (!geq_margin(ev.duration, RC5_UNIT, RC5_UNIT / 2))
  goto out;

again:
 IR_dprintk(2, "RC5-sz decode started at state %i (%uus %s)\n",
     data->state, TO_US(ev.duration), TO_STR(ev.pulse));

 if (!geq_margin(ev.duration, RC5_UNIT, RC5_UNIT / 2))
  return 0;

 switch (data->state) {

 case 128:
  if (!ev.pulse)
   break;

  data->state = 130;
  data->count = 1;
  data->wanted_bits = RC5_SZ_NBITS;
  decrease_duration(&ev, RC5_BIT_START);
  goto again;

 case 130:
  if (!eq_margin(ev.duration, RC5_BIT_START, RC5_UNIT / 2))
   break;

  data->bits <<= 1;
  if (!ev.pulse)
   data->bits |= 1;
  data->count++;
  data->state = 131;
  return 0;

 case 131:
  if (!is_transition(&ev, &dev->raw->prev_ev))
   break;

  if (data->count == data->wanted_bits)
   data->state = 129;
  else
   data->state = 130;

  decrease_duration(&ev, RC5_BIT_END);
  goto again;

 case 129:
  if (ev.pulse)
   break;


  command = (data->bits & 0x0003F) >> 0;
  system = (data->bits & 0x02FC0) >> 6;
  toggle = (data->bits & 0x01000) ? 1 : 0;
  scancode = system << 6 | command;

  IR_dprintk(1, "RC5-sz scancode 0x%04x (toggle: %u)\n",
      scancode, toggle);

  rc_keydown(dev, scancode, toggle);
  data->state = 128;
  return 0;
 }

out:
 IR_dprintk(1, "RC5-sz decode failed at state %i (%uus %s)\n",
     data->state, TO_US(ev.duration), TO_STR(ev.pulse));
 data->state = 128;
 return -EINVAL;
}
