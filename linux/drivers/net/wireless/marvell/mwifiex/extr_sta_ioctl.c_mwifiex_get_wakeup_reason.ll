; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_get_wakeup_reason.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_get_wakeup_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_ds_wakeup_reason = type { i32 }

@HostCmd_CMD_HS_WAKEUP_REASON = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_GET = common dso_local global i32 0, align 4
@MWIFIEX_SYNC_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_get_wakeup_reason(%struct.mwifiex_private* %0, i32 %1, i32 %2, %struct.mwifiex_ds_wakeup_reason* %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_ds_wakeup_reason*, align 8
  %9 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.mwifiex_ds_wakeup_reason* %3, %struct.mwifiex_ds_wakeup_reason** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %11 = load i32, i32* @HostCmd_CMD_HS_WAKEUP_REASON, align 4
  %12 = load i32, i32* @HostCmd_ACT_GEN_GET, align 4
  %13 = load %struct.mwifiex_ds_wakeup_reason*, %struct.mwifiex_ds_wakeup_reason** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MWIFIEX_SYNC_CMD, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %10, i32 %11, i32 %12, i32 0, %struct.mwifiex_ds_wakeup_reason* %13, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  ret i32 %19
}

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_ds_wakeup_reason*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
