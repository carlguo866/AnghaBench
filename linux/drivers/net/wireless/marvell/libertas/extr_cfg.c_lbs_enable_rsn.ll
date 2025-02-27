; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_enable_rsn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_enable_rsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_802_11_enable_rsn = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CMD_ACT_SET = common dso_local global i32 0, align 4
@CMD_802_11_ENABLE_RSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i32)* @lbs_enable_rsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_enable_rsn(%struct.lbs_private* %0, i32 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_ds_802_11_enable_rsn, align 8
  %6 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @memset(%struct.cmd_ds_802_11_enable_rsn* %5, i32 0, i32 24)
  %8 = call i8* @cpu_to_le16(i32 24)
  %9 = getelementptr inbounds %struct.cmd_ds_802_11_enable_rsn, %struct.cmd_ds_802_11_enable_rsn* %5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @CMD_ACT_SET, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = getelementptr inbounds %struct.cmd_ds_802_11_enable_rsn, %struct.cmd_ds_802_11_enable_rsn* %5, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @cpu_to_le16(i32 %14)
  %16 = getelementptr inbounds %struct.cmd_ds_802_11_enable_rsn, %struct.cmd_ds_802_11_enable_rsn* %5, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %18 = load i32, i32* @CMD_802_11_ENABLE_RSN, align 4
  %19 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %17, i32 %18, %struct.cmd_ds_802_11_enable_rsn* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  ret i32 %20
}

declare dso_local i32 @memset(%struct.cmd_ds_802_11_enable_rsn*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_enable_rsn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
