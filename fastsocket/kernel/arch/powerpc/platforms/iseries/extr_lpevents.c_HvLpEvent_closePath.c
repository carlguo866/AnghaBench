
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ xLpIndex; } ;
typedef scalar_t__ HvLpIndex ;
typedef size_t HvLpEvent_Type ;


 int HvCallEvent_closeLpEventPath (scalar_t__,size_t) ;
 size_t HvLpEvent_Type_NumTypes ;
 TYPE_1__ itLpNaca ;
 scalar_t__* lpEventHandler ;
 scalar_t__* lpEventHandlerPaths ;

int HvLpEvent_closePath(HvLpEvent_Type eventType, HvLpIndex lpIndex)
{
 if ((eventType < HvLpEvent_Type_NumTypes) &&
   lpEventHandler[eventType] &&
   lpEventHandlerPaths[eventType]) {
  if (lpIndex == 0)
   lpIndex = itLpNaca.xLpIndex;
  HvCallEvent_closeLpEventPath(lpIndex, eventType);
  --lpEventHandlerPaths[eventType];
  return 0;
 }
 return 1;
}
