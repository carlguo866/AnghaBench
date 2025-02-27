
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int* stat; int * cmd; } ;
struct lx6464es {int msg_lock; TYPE_1__ rmh; } ;


 int CMD_12_GET_PEAK ;
 int PIPE_INFO_TO_CMD (int,int) ;
 int lx_message_init (TYPE_1__*,int ) ;
 int lx_message_send_atomic (struct lx6464es*,TYPE_1__*) ;
 scalar_t__* peak_map ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int lx_level_peaks(struct lx6464es *chip, int is_capture, int channels,
     u32 *r_levels)
{
 int err = 0;
 unsigned long flags;
 int i;
 spin_lock_irqsave(&chip->msg_lock, flags);

 for (i = 0; i < channels; i += 4) {
  u32 s0, s1, s2, s3;

  lx_message_init(&chip->rmh, CMD_12_GET_PEAK);
  chip->rmh.cmd[0] |= PIPE_INFO_TO_CMD(is_capture, i);

  err = lx_message_send_atomic(chip, &chip->rmh);

  if (err == 0) {
   s0 = peak_map[chip->rmh.stat[0] & 0x0F];
   s1 = peak_map[(chip->rmh.stat[0] >> 4) & 0xf];
   s2 = peak_map[(chip->rmh.stat[0] >> 8) & 0xf];
   s3 = peak_map[(chip->rmh.stat[0] >> 12) & 0xf];
  } else
   s0 = s1 = s2 = s3 = 0;

  r_levels[0] = s0;
  r_levels[1] = s1;
  r_levels[2] = s2;
  r_levels[3] = s3;

  r_levels += 4;
 }

 spin_unlock_irqrestore(&chip->msg_lock, flags);
 return err;
}
