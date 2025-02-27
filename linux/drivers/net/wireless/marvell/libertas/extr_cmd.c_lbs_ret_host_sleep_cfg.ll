; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_ret_host_sleep_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_ret_host_sleep_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i64, i32, i64 }
%struct.cmd_header = type { i32 }

@PS_STATE_FULL_POWER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* @lbs_ret_host_sleep_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_ret_host_sleep_cfg(%struct.lbs_private* %0, i64 %1, %struct.cmd_header* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cmd_header*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.cmd_header* %2, %struct.cmd_header** %6, align 8
  %7 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %8 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PS_STATE_FULL_POWER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 2
  %24 = call i32 @wake_up_interruptible(i32* %23)
  br label %25

25:                                               ; preds = %19, %11
  br label %29

26:                                               ; preds = %3
  %27 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %25
  ret i32 0
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
