; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/bocaj/extr_tap_dances.c_run_diablo_macro_check.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/bocaj/extr_tap_dances.c_run_diablo_macro_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@diablo_key_time = common dso_local global i64* null, align 8
@diablo_timer = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_diablo_macro_check() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %25, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 4
  br i1 %4, label %5, label %28

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = call i64 @check_dtimer(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load i64*, i64** @diablo_key_time, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = call i32 (...) @timer_read()
  %18 = load i32*, i32** @diablo_timer, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @send_diablo_keystroke(i32 %22)
  br label %24

24:                                               ; preds = %16, %9, %5
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %2

28:                                               ; preds = %2
  ret void
}

declare dso_local i64 @check_dtimer(i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @send_diablo_keystroke(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
