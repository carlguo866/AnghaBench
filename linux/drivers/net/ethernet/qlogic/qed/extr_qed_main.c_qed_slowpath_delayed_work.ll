; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_slowpath_delayed_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_slowpath_delayed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, i64)* @qed_slowpath_delayed_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_slowpath_delayed_work(%struct.qed_hwfn* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %29

15:                                               ; preds = %3
  %16 = call i32 (...) @smp_mb__before_atomic()
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %19 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i32 0, i32 2
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = call i32 (...) @smp_mb__after_atomic()
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %23 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %26 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @queue_delayed_work(i32 %24, i32* %26, i64 %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %15, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
