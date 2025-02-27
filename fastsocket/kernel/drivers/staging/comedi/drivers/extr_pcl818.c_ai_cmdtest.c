
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int n_chan; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; scalar_t__ start_arg; scalar_t__ scan_begin_arg; int convert_arg; int chanlist_len; int scan_end_arg; int stop_arg; int flags; scalar_t__ chanlist; } ;
struct TYPE_4__ {int i8253_osc_base; } ;
struct TYPE_3__ {int ns_min; } ;


 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_FOLLOW ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_ROUND_MASK ;
 int TRIG_TIMER ;
 int check_channel_list (struct comedi_device*,struct comedi_subdevice*,scalar_t__,int) ;
 TYPE_2__* devpriv ;
 int i8253_cascade_ns_to_timer (int ,int*,int*,int*,int) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int ai_cmdtest(struct comedi_device *dev, struct comedi_subdevice *s,
        struct comedi_cmd *cmd)
{
 int err = 0;
 int tmp, divisor1, divisor2;



 tmp = cmd->start_src;
 cmd->start_src &= TRIG_NOW;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 cmd->scan_begin_src &= TRIG_FOLLOW;
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;

 tmp = cmd->convert_src;
 cmd->convert_src &= TRIG_TIMER | TRIG_EXT;
 if (!cmd->convert_src || tmp != cmd->convert_src)
  err++;

 tmp = cmd->scan_end_src;
 cmd->scan_end_src &= TRIG_COUNT;
 if (!cmd->scan_end_src || tmp != cmd->scan_end_src)
  err++;

 tmp = cmd->stop_src;
 cmd->stop_src &= TRIG_COUNT | TRIG_NONE;
 if (!cmd->stop_src || tmp != cmd->stop_src)
  err++;

 if (err) {
  return 1;
 }



 if (cmd->start_src != TRIG_NOW) {
  cmd->start_src = TRIG_NOW;
  err++;
 }
 if (cmd->scan_begin_src != TRIG_FOLLOW) {
  cmd->scan_begin_src = TRIG_FOLLOW;
  err++;
 }
 if (cmd->convert_src != TRIG_TIMER && cmd->convert_src != TRIG_EXT)
  err++;

 if (cmd->scan_end_src != TRIG_COUNT) {
  cmd->scan_end_src = TRIG_COUNT;
  err++;
 }

 if (cmd->stop_src != TRIG_NONE && cmd->stop_src != TRIG_COUNT)
  err++;

 if (err) {
  return 2;
 }



 if (cmd->start_arg != 0) {
  cmd->start_arg = 0;
  err++;
 }

 if (cmd->scan_begin_arg != 0) {
  cmd->scan_begin_arg = 0;
  err++;
 }

 if (cmd->convert_src == TRIG_TIMER) {
  if (cmd->convert_arg < this_board->ns_min) {
   cmd->convert_arg = this_board->ns_min;
   err++;
  }
 } else {
  if (cmd->convert_arg != 0) {
   cmd->convert_arg = 0;
   err++;
  }
 }

 if (!cmd->chanlist_len) {
  cmd->chanlist_len = 1;
  err++;
 }
 if (cmd->chanlist_len > s->n_chan) {
  cmd->chanlist_len = s->n_chan;
  err++;
 }
 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }
 if (cmd->stop_src == TRIG_COUNT) {
  if (!cmd->stop_arg) {
   cmd->stop_arg = 1;
   err++;
  }
 } else {
  if (cmd->stop_arg != 0) {
   cmd->stop_arg = 0;
   err++;
  }
 }

 if (err) {
  return 3;
 }



 if (cmd->convert_src == TRIG_TIMER) {
  tmp = cmd->convert_arg;
  i8253_cascade_ns_to_timer(devpriv->i8253_osc_base, &divisor1,
       &divisor2, &cmd->convert_arg,
       cmd->flags & TRIG_ROUND_MASK);
  if (cmd->convert_arg < this_board->ns_min)
   cmd->convert_arg = this_board->ns_min;
  if (tmp != cmd->convert_arg)
   err++;
 }

 if (err) {
  return 4;
 }



 if (cmd->chanlist) {
  if (!check_channel_list(dev, s, cmd->chanlist,
     cmd->chanlist_len))
   return 5;
 }

 return 0;
}
