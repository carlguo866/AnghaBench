; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_mperf_monitor.c_mperf_start.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_mperf_monitor.c_mperf_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@time_start = common dso_local global i32 0, align 4
@tsc_at_measure_start = common dso_local global i64 0, align 8
@cpu_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"TSC diff: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mperf_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mperf_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @CLOCK_REALTIME, align 4
  %4 = call i32 @clock_gettime(i32 %3, i32* @time_start)
  %5 = call i32 @mperf_get_tsc(i64* @tsc_at_measure_start)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %13, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @cpu_count, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @mperf_init_stats(i32 %11)
  br label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %6

16:                                               ; preds = %6
  %17 = call i32 @mperf_get_tsc(i64* %2)
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @tsc_at_measure_start, align 8
  %20 = sub i64 %18, %19
  %21 = call i32 @dprint(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %20)
  ret i32 0
}

declare dso_local i32 @clock_gettime(i32, i32*) #1

declare dso_local i32 @mperf_get_tsc(i64*) #1

declare dso_local i32 @mperf_init_stats(i32) #1

declare dso_local i32 @dprint(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
