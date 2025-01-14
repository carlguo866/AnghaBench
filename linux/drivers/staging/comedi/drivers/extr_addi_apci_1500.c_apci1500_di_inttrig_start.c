
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int class_dev; struct apci1500_private* private; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct apci1500_private {int* pm; int* pt; int* pp; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int EINVAL ;
 unsigned int Z8536_CMD_SET_IE ;
 unsigned int Z8536_INT_CTRL_DLC ;
 unsigned int Z8536_INT_CTRL_MIE ;
 int Z8536_INT_CTRL_REG ;
 unsigned int Z8536_PAB_MODE_IMO ;
 unsigned int Z8536_PAB_MODE_PMS_AND ;
 unsigned int Z8536_PAB_MODE_PMS_DISABLE ;
 unsigned int Z8536_PAB_MODE_PMS_MASK ;
 unsigned int Z8536_PAB_MODE_PMS_OR ;
 int Z8536_PA_CMDSTAT_REG ;
 int Z8536_PA_MODE_REG ;
 int Z8536_PA_PM_REG ;
 int Z8536_PA_PP_REG ;
 int Z8536_PA_PT_REG ;
 int Z8536_PB_CMDSTAT_REG ;
 int Z8536_PB_MODE_REG ;
 int Z8536_PB_PM_REG ;
 int Z8536_PB_PP_REG ;
 int Z8536_PB_PT_REG ;
 int apci1500_port_enable (struct comedi_device*,int) ;
 int dev_dbg (int ,char*,...) ;
 unsigned int z8536_read (struct comedi_device*,int ) ;
 int z8536_write (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static int apci1500_di_inttrig_start(struct comedi_device *dev,
         struct comedi_subdevice *s,
         unsigned int trig_num)
{
 struct apci1500_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int pa_mode = Z8536_PAB_MODE_PMS_DISABLE;
 unsigned int pb_mode = Z8536_PAB_MODE_PMS_DISABLE;
 unsigned int pa_trig = trig_num & 0x01;
 unsigned int pb_trig = (trig_num >> 1) & 0x01;
 bool valid_trig = 0;
 unsigned int val;

 if (trig_num != cmd->start_arg)
  return -EINVAL;


 apci1500_port_enable(dev, 0);


 z8536_write(dev, devpriv->pm[pa_trig] & 0xff, Z8536_PA_PM_REG);
 z8536_write(dev, devpriv->pt[pa_trig] & 0xff, Z8536_PA_PT_REG);
 z8536_write(dev, devpriv->pp[pa_trig] & 0xff, Z8536_PA_PP_REG);


 z8536_write(dev, (devpriv->pm[pb_trig] >> 8) & 0xff, Z8536_PB_PM_REG);
 z8536_write(dev, (devpriv->pt[pb_trig] >> 8) & 0xff, Z8536_PB_PT_REG);
 z8536_write(dev, (devpriv->pp[pb_trig] >> 8) & 0xff, Z8536_PB_PP_REG);


 if (devpriv->pm[pa_trig] & 0xff) {
  pa_mode = pa_trig ? Z8536_PAB_MODE_PMS_AND
      : Z8536_PAB_MODE_PMS_OR;

  val = z8536_read(dev, Z8536_PA_MODE_REG);
  val &= ~Z8536_PAB_MODE_PMS_MASK;
  val |= (pa_mode | Z8536_PAB_MODE_IMO);
  z8536_write(dev, val, Z8536_PA_MODE_REG);

  z8536_write(dev, Z8536_CMD_SET_IE, Z8536_PA_CMDSTAT_REG);

  valid_trig = 1;

  dev_dbg(dev->class_dev,
   "Port A configured for %s mode pattern detection\n",
   pa_trig ? "AND" : "OR");
 }


 if (devpriv->pm[pb_trig] & 0xff00) {
  pb_mode = pb_trig ? Z8536_PAB_MODE_PMS_AND
      : Z8536_PAB_MODE_PMS_OR;

  val = z8536_read(dev, Z8536_PB_MODE_REG);
  val &= ~Z8536_PAB_MODE_PMS_MASK;
  val |= (pb_mode | Z8536_PAB_MODE_IMO);
  z8536_write(dev, val, Z8536_PB_MODE_REG);

  z8536_write(dev, Z8536_CMD_SET_IE, Z8536_PB_CMDSTAT_REG);

  valid_trig = 1;

  dev_dbg(dev->class_dev,
   "Port B configured for %s mode pattern detection\n",
   pb_trig ? "AND" : "OR");
 }


 apci1500_port_enable(dev, 1);

 if (!valid_trig) {
  dev_dbg(dev->class_dev,
   "digital trigger %d is not configured\n", trig_num);
  return -EINVAL;
 }


 z8536_write(dev, Z8536_INT_CTRL_MIE | Z8536_INT_CTRL_DLC,
      Z8536_INT_CTRL_REG);

 return 0;
}
