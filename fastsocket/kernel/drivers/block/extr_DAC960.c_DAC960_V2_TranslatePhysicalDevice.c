
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_24__ {TYPE_4__* ScatterGatherSegments; } ;
struct TYPE_25__ {int DataTransferSize; TYPE_5__ DataTransferMemoryAddress; } ;
struct TYPE_21__ {unsigned char TargetID; unsigned char Channel; } ;
struct TYPE_20__ {int DataTransferControllerToHost; int NoAutoRequestSense; } ;
struct TYPE_22__ {int DataTransferSize; int IOCTL_Opcode; TYPE_2__ PhysicalDevice; TYPE_1__ CommandControlBits; int CommandOpcode; } ;
struct TYPE_17__ {TYPE_6__ Common; TYPE_3__ PhysicalDeviceInfo; } ;
struct TYPE_28__ {scalar_t__ CommandStatus; TYPE_10__ CommandMailbox; } ;
struct TYPE_27__ {TYPE_7__* PhysicalToLogicalDevice; int PhysicalToLogicalDeviceDMA; } ;
struct TYPE_26__ {unsigned short LogicalDeviceNumber; } ;
struct TYPE_23__ {int SegmentByteCount; int SegmentDataPointer; } ;
struct TYPE_19__ {TYPE_9__ V2; TYPE_11__* Controller; } ;
struct TYPE_18__ {TYPE_8__ V2; } ;
typedef int DAC960_V2_PhysicalToLogicalDevice_T ;
typedef TYPE_10__ DAC960_V2_CommandMailbox_T ;
typedef TYPE_11__ DAC960_Controller_T ;
typedef TYPE_12__ DAC960_Command_T ;


 int DAC960_ExecuteCommand (TYPE_12__*) ;
 int DAC960_V2_IOCTL ;
 scalar_t__ DAC960_V2_NormalCompletion ;
 int DAC960_V2_TranslatePhysicalToLogicalDevice ;
 int memcpy (TYPE_10__*,TYPE_10__*,int) ;

__attribute__((used)) static bool DAC960_V2_TranslatePhysicalDevice(DAC960_Command_T *Command,
       unsigned char Channel,
       unsigned char TargetID,
       unsigned short
         *LogicalDeviceNumber)
{
  DAC960_V2_CommandMailbox_T SavedCommandMailbox, *CommandMailbox;
  DAC960_Controller_T *Controller = Command->Controller;

  CommandMailbox = &Command->V2.CommandMailbox;
  memcpy(&SavedCommandMailbox, CommandMailbox,
  sizeof(DAC960_V2_CommandMailbox_T));

  CommandMailbox->PhysicalDeviceInfo.CommandOpcode = DAC960_V2_IOCTL;
  CommandMailbox->PhysicalDeviceInfo.CommandControlBits
        .DataTransferControllerToHost = 1;
  CommandMailbox->PhysicalDeviceInfo.CommandControlBits
        .NoAutoRequestSense = 1;
  CommandMailbox->PhysicalDeviceInfo.DataTransferSize =
    sizeof(DAC960_V2_PhysicalToLogicalDevice_T);
  CommandMailbox->PhysicalDeviceInfo.PhysicalDevice.TargetID = TargetID;
  CommandMailbox->PhysicalDeviceInfo.PhysicalDevice.Channel = Channel;
  CommandMailbox->PhysicalDeviceInfo.IOCTL_Opcode =
    DAC960_V2_TranslatePhysicalToLogicalDevice;
  CommandMailbox->Common.DataTransferMemoryAddress
   .ScatterGatherSegments[0]
   .SegmentDataPointer =
      Controller->V2.PhysicalToLogicalDeviceDMA;
  CommandMailbox->Common.DataTransferMemoryAddress
   .ScatterGatherSegments[0]
   .SegmentByteCount =
      CommandMailbox->Common.DataTransferSize;

  DAC960_ExecuteCommand(Command);
  *LogicalDeviceNumber = Controller->V2.PhysicalToLogicalDevice->LogicalDeviceNumber;

  memcpy(CommandMailbox, &SavedCommandMailbox,
  sizeof(DAC960_V2_CommandMailbox_T));
  return (Command->V2.CommandStatus == DAC960_V2_NormalCompletion);
}
