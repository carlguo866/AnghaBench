; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_stats_assess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_stats_assess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { i32, i64 }

@FP_SHIFT = common dso_local global i32 0, align 4
@SIXTEENTH = common dso_local global i32 0, align 4
@Q_POOR = common dso_local global i32 0, align 4
@EIGHTH = common dso_local global i32 0, align 4
@Q_FAIR = common dso_local global i32 0, align 4
@Q_WELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stats*)* @stats_assess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_assess(%struct.stats* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stats*, align 8
  %4 = alloca i32, align 4
  store %struct.stats* %0, %struct.stats** %3, align 8
  %5 = load %struct.stats*, %struct.stats** %3, align 8
  %6 = getelementptr inbounds %struct.stats, %struct.stats* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @FP_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = load %struct.stats*, %struct.stats** %3, align 8
  %11 = getelementptr inbounds %struct.stats, %struct.stats* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = load %struct.stats*, %struct.stats** %3, align 8
  %15 = getelementptr inbounds %struct.stats, %struct.stats* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = call i32 @safe_div(i32 %9, i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SIXTEENTH, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @Q_POOR, align 4
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @EIGHTH, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @Q_FAIR, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @Q_WELL, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %28, %22
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @safe_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
