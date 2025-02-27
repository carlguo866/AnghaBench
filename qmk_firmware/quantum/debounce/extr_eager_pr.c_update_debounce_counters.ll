; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/debounce/extr_eager_pr.c_update_debounce_counters.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/debounce/extr_eager_pr.c_update_debounce_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@counters_need_update = common dso_local global i32 0, align 4
@debounce_counters = common dso_local global i64* null, align 8
@DEBOUNCE_ELAPSED = common dso_local global i64 0, align 8
@MAX_DEBOUNCE = common dso_local global i32 0, align 4
@DEBOUNCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_debounce_counters(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* @counters_need_update, align 4
  %7 = load i64*, i64** @debounce_counters, align 8
  store i64* %7, i64** %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DEBOUNCE_ELAPSED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @MAX_DEBOUNCE, align 4
  %22 = call i64 @TIMER_DIFF(i64 %18, i64 %20, i32 %21)
  %23 = load i64, i64* @DEBOUNCE, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i64, i64* @DEBOUNCE_ELAPSED, align 8
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  br label %29

28:                                               ; preds = %17
  store i32 1, i32* @counters_need_update, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29, %12
  %31 = load i64*, i64** %5, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %5, align 8
  br label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %6, align 8
  br label %8

36:                                               ; preds = %8
  ret void
}

declare dso_local i64 @TIMER_DIFF(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
