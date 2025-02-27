
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl818_board {int ns_min; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int pacer; struct pcl818_board* board_ptr; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; unsigned int start_arg; unsigned int scan_begin_arg; unsigned int convert_arg; unsigned int scan_end_arg; unsigned int chanlist_len; unsigned int stop_arg; scalar_t__ chanlist; int flags; } ;


 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_FOLLOW ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_TIMER ;
 int check_channel_list (struct comedi_device*,struct comedi_subdevice*,scalar_t__,unsigned int) ;
 int comedi_8254_cascade_ns_to_timer (int ,unsigned int*,int ) ;
 int comedi_check_trigger_arg_is (unsigned int*,unsigned int) ;
 int comedi_check_trigger_arg_min (unsigned int*,int) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,int) ;

__attribute__((used)) static int ai_cmdtest(struct comedi_device *dev, struct comedi_subdevice *s,
        struct comedi_cmd *cmd)
{
 const struct pcl818_board *board = dev->board_ptr;
 int err = 0;



 err |= comedi_check_trigger_src(&cmd->start_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src, TRIG_FOLLOW);
 err |= comedi_check_trigger_src(&cmd->convert_src,
     TRIG_TIMER | TRIG_EXT);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->convert_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (err)
  return 2;



 err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);
 err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);

 if (cmd->convert_src == TRIG_TIMER) {
  err |= comedi_check_trigger_arg_min(&cmd->convert_arg,
          board->ns_min);
 } else {
  err |= comedi_check_trigger_arg_is(&cmd->convert_arg, 0);
 }

 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 if (cmd->stop_src == TRIG_COUNT)
  err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
 else
  err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);

 if (err)
  return 3;



 if (cmd->convert_src == TRIG_TIMER) {
  unsigned int arg = cmd->convert_arg;

  comedi_8254_cascade_ns_to_timer(dev->pacer, &arg, cmd->flags);
  err |= comedi_check_trigger_arg_is(&cmd->convert_arg, arg);
 }

 if (err)
  return 4;



 if (cmd->chanlist) {
  if (!check_channel_list(dev, s, cmd->chanlist,
     cmd->chanlist_len))
   return 5;
 }

 return 0;
}
