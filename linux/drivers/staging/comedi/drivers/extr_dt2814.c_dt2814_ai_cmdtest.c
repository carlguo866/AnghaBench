
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; unsigned int start_arg; unsigned int scan_begin_arg; unsigned int scan_end_arg; unsigned int chanlist_len; unsigned int stop_arg; int flags; } ;


 int DT2814_MAX_SPEED ;
 int TRIG_COUNT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_TIMER ;
 int comedi_check_trigger_arg_is (unsigned int*,unsigned int) ;
 int comedi_check_trigger_arg_max (unsigned int*,int) ;
 int comedi_check_trigger_arg_min (unsigned int*,int) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,int) ;
 int dt2814_ns_to_timer (unsigned int*,int ) ;

__attribute__((used)) static int dt2814_ai_cmdtest(struct comedi_device *dev,
        struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 int err = 0;
 unsigned int arg;



 err |= comedi_check_trigger_src(&cmd->start_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src, TRIG_TIMER);
 err |= comedi_check_trigger_src(&cmd->convert_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (err)
  return 2;



 err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);

 err |= comedi_check_trigger_arg_max(&cmd->scan_begin_arg, 1000000000);
 err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
         DT2814_MAX_SPEED);

 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 if (cmd->stop_src == TRIG_COUNT)
  err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 2);
 else
  err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);

 if (err)
  return 3;



 arg = cmd->scan_begin_arg;
 dt2814_ns_to_timer(&arg, cmd->flags);
 err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, arg);

 if (err)
  return 4;

 return 0;
}
