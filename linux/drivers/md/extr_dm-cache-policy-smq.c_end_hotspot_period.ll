; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_end_hotspot_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_end_hotspot_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { i64, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HOTSPOT_UPDATE_PERIOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*)* @end_hotspot_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_hotspot_period(%struct.smq_policy* %0) #0 {
  %2 = alloca %struct.smq_policy*, align 8
  store %struct.smq_policy* %0, %struct.smq_policy** %2, align 8
  %3 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %4 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %7 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @clear_bitset(i32 %5, i32 %8)
  %10 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %11 = call i32 @update_promote_levels(%struct.smq_policy* %10)
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %14 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @time_after(i64 %12, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %20 = call i32 @update_level_jump(%struct.smq_policy* %19)
  %21 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %22 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %21, i32 0, i32 2
  %23 = call i32 @q_redistribute(i32* %22)
  %24 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %25 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %24, i32 0, i32 1
  %26 = call i32 @stats_reset(i32* %25)
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* @HOTSPOT_UPDATE_PERIOD, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %31 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @clear_bitset(i32, i32) #1

declare dso_local i32 @update_promote_levels(%struct.smq_policy*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @update_level_jump(%struct.smq_policy*) #1

declare dso_local i32 @q_redistribute(i32*) #1

declare dso_local i32 @stats_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
