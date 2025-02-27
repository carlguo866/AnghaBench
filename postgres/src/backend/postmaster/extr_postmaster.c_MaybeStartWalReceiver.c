
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NoShutdown ;
 scalar_t__ PM_HOT_STANDBY ;
 scalar_t__ PM_RECOVERY ;
 scalar_t__ PM_STARTUP ;
 scalar_t__ PM_WAIT_READONLY ;
 scalar_t__ Shutdown ;
 scalar_t__ StartWalReceiver () ;
 scalar_t__ WalReceiverPID ;
 int WalReceiverRequested ;
 scalar_t__ pmState ;

__attribute__((used)) static void
MaybeStartWalReceiver(void)
{
 if (WalReceiverPID == 0 &&
  (pmState == PM_STARTUP || pmState == PM_RECOVERY ||
   pmState == PM_HOT_STANDBY || pmState == PM_WAIT_READONLY) &&
  Shutdown == NoShutdown)
 {
  WalReceiverPID = StartWalReceiver();
  if (WalReceiverPID != 0)
   WalReceiverRequested = 0;

 }
}
