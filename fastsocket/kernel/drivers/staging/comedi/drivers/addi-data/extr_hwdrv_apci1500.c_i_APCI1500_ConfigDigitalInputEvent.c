
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 unsigned int APCI1500_AND ;
 unsigned int APCI1500_OR ;
 unsigned int APCI1500_OR_PRIORITY ;
 int APCI1500_RW_MASTER_CONFIGURATION_CONTROL ;
 int APCI1500_RW_MASTER_INTERRUPT_CONTROL ;
 int APCI1500_RW_PORT_A_PATTERN_MASK ;
 int APCI1500_RW_PORT_A_PATTERN_POLARITY ;
 int APCI1500_RW_PORT_A_PATTERN_TRANSITION ;
 int APCI1500_RW_PORT_A_SPECIFICATION ;
 int APCI1500_RW_PORT_B_PATTERN_MASK ;
 int APCI1500_RW_PORT_B_PATTERN_POLARITY ;
 int APCI1500_RW_PORT_B_PATTERN_TRANSITION ;
 int APCI1500_RW_PORT_B_SPECIFICATION ;
 scalar_t__ APCI1500_Z8536_CONTROL_REGISTER ;
 int EINVAL ;
 TYPE_1__* devpriv ;
 int i_Event1Status ;
 int i_Event2Status ;
 unsigned int i_Logic ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int printk (char*) ;

int i_APCI1500_ConfigDigitalInputEvent(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_PatternPolarity = 0, i_PatternTransition = 0, i_PatternMask = 0;
 int i_MaxChannel = 0, i_Count = 0, i_EventMask = 0;
 int i_PatternTransitionCount = 0, i_RegValue;
 int i;




 outb(APCI1500_RW_MASTER_INTERRUPT_CONTROL,
  devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);



 outb(0x00, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 if (data[0] == 1) {
  i_MaxChannel = 8;
 }
 else {
  if (data[0] == 2) {
   i_MaxChannel = 6;
  }
  else {
   printk("\nThe specified port event  does not exist\n");
   return -EINVAL;
  }
 }
 switch (data[1]) {
 case 0:
  data[1] = APCI1500_AND;
  break;
 case 1:
  data[1] = APCI1500_OR;
  break;
 case 2:
  data[1] = APCI1500_OR_PRIORITY;
  break;
 default:
  printk("\nThe specified interrupt logic does not exist\n");
  return -EINVAL;
 }

 i_Logic = data[1];
 for (i_Count = i_MaxChannel, i = 0; i_Count > 0; i_Count--, i++) {
  i_EventMask = data[2 + i];
  switch (i_EventMask) {
  case 0:
   i_PatternMask =
    i_PatternMask | (1 << (i_MaxChannel - i_Count));
   break;
  case 1:
   i_PatternMask =
    i_PatternMask | (1 << (i_MaxChannel - i_Count));
   i_PatternPolarity =
    i_PatternPolarity | (1 << (i_MaxChannel -
     i_Count));
   break;
  case 2:
   i_PatternMask =
    i_PatternMask | (1 << (i_MaxChannel - i_Count));
   i_PatternTransition =
    i_PatternTransition | (1 << (i_MaxChannel -
     i_Count));
   break;
  case 3:
   i_PatternMask =
    i_PatternMask | (1 << (i_MaxChannel - i_Count));
   i_PatternPolarity =
    i_PatternPolarity | (1 << (i_MaxChannel -
     i_Count));
   i_PatternTransition =
    i_PatternTransition | (1 << (i_MaxChannel -
     i_Count));
   break;
  case 4:
   i_PatternTransition =
    i_PatternTransition | (1 << (i_MaxChannel -
     i_Count));
   break;
  case 5:
   break;
  default:
   printk("\nThe option indicated in the event mask does not exist\n");
   return -EINVAL;
  }
 }

 if (data[0] == 1) {




  if (data[1] == APCI1500_AND ||
   data[1] == APCI1500_OR ||
   data[1] == APCI1500_OR_PRIORITY) {





   if (data[1] == APCI1500_OR_PRIORITY
    && i_PatternTransition != 0) {



    printk("\nTransition error on an OR PRIORITY logic\n");
    return -EINVAL;
   }






   if (data[1] == APCI1500_AND) {
    for (i_Count = 0; i_Count < 8; i_Count++) {
     i_PatternTransitionCount =
      i_PatternTransitionCount +
      ((i_PatternTransition >>
       i_Count) & 0x1);

    }

    if (i_PatternTransitionCount > 1) {



     printk("\n Transition error on an AND logic\n");
     return -EINVAL;
    }
   }




   outb(APCI1500_RW_MASTER_CONFIGURATION_CONTROL,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);



   outb(0xF0,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);



   outb(APCI1500_RW_PORT_A_PATTERN_POLARITY,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   outb(i_PatternPolarity,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);





   outb(APCI1500_RW_PORT_A_PATTERN_MASK,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   outb(i_PatternMask,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);




   outb(APCI1500_RW_PORT_A_PATTERN_TRANSITION,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   outb(i_PatternTransition,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);





   outb(APCI1500_RW_PORT_A_SPECIFICATION,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   i_RegValue =
    inb(devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);





   outb(APCI1500_RW_PORT_A_SPECIFICATION,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);





   i_RegValue = (i_RegValue & 0xF9) | data[1] | 0x9;
   outb(i_RegValue,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);

   i_Event1Status = 1;





   outb(APCI1500_RW_MASTER_CONFIGURATION_CONTROL,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);



   outb(0xF4,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);

  }
  else {
   printk("\nThe choice for interrupt logic does not exist\n");
   return -EINVAL;
  }
 }





 if (data[0] == 2) {




  if (data[1] == APCI1500_OR) {



   outb(APCI1500_RW_MASTER_CONFIGURATION_CONTROL,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);



   outb(0x74,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);




   outb(APCI1500_RW_PORT_B_SPECIFICATION,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   i_RegValue =
    inb(devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);





   outb(APCI1500_RW_PORT_B_SPECIFICATION,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   i_RegValue = i_RegValue & 0xF9;
   outb(i_RegValue,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);





   i_PatternMask = (i_PatternMask | 0xC0);
   i_PatternPolarity = (i_PatternPolarity | 0xC0);
   i_PatternTransition = (i_PatternTransition | 0xC0);




   outb(APCI1500_RW_PORT_B_PATTERN_POLARITY,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   outb(i_PatternPolarity,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);




   outb(APCI1500_RW_PORT_B_PATTERN_TRANSITION,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   outb(i_PatternTransition,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);





   outb(APCI1500_RW_PORT_B_PATTERN_MASK,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   outb(i_PatternMask,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);





   outb(APCI1500_RW_PORT_B_SPECIFICATION,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   i_RegValue =
    inb(devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);




   outb(APCI1500_RW_PORT_B_SPECIFICATION,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
   i_RegValue = (i_RegValue & 0xF9) | 4;
   outb(i_RegValue,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);

   i_Event2Status = 1;




   outb(APCI1500_RW_MASTER_CONFIGURATION_CONTROL,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);




   outb(0xF4,
    devpriv->iobase +
    APCI1500_Z8536_CONTROL_REGISTER);
  }
  else {
   printk("\nThe choice for interrupt logic does not exist\n");
   return -EINVAL;
  }
 }

 return insn->n;
}
