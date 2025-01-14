
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; unsigned int start_arg; unsigned int scan_begin_arg; int convert_arg; unsigned int scan_end_arg; scalar_t__ chanlist_len; unsigned int stop_arg; scalar_t__ chanlist; } ;


 int TRIG_COUNT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_TIMER ;
 int comedi_check_trigger_arg_is (unsigned int*,scalar_t__) ;
 int comedi_check_trigger_arg_max (unsigned int*,int) ;
 int comedi_check_trigger_arg_min (unsigned int*,unsigned int) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,int) ;
 int dmm32at_ai_check_chanlist (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;

__attribute__((used)) static int dmm32at_ai_cmdtest(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_cmd *cmd)
{
 int err = 0;
 unsigned int arg;



 err |= comedi_check_trigger_src(&cmd->start_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src, TRIG_TIMER);
 err |= comedi_check_trigger_src(&cmd->convert_src, TRIG_TIMER);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (err)
  return 2;



 err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);

 err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg, 1000000);
 err |= comedi_check_trigger_arg_max(&cmd->scan_begin_arg, 1000000000);

 if (cmd->convert_arg >= 17500)
  cmd->convert_arg = 20000;
 else if (cmd->convert_arg >= 12500)
  cmd->convert_arg = 15000;
 else if (cmd->convert_arg >= 7500)
  cmd->convert_arg = 10000;
 else
  cmd->convert_arg = 5000;

 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 if (cmd->stop_src == TRIG_COUNT)
  err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
 else
  err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);

 if (err)
  return 3;



 arg = cmd->convert_arg * cmd->scan_end_arg;
 err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg, arg);

 if (err)
  return 4;


 if (cmd->chanlist && cmd->chanlist_len > 0)
  err |= dmm32at_ai_check_chanlist(dev, s, cmd);

 if (err)
  return 5;

 return 0;
}
