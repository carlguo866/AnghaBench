; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui.c_gui_get_base_width.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui.c_gui_get_base_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64* }

@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SBAR_LEFT = common dso_local global i64 0, align 8
@SBAR_RIGHT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_get_base_width() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %3 = mul nsw i32 2, %2
  store i32 %3, i32* %1, align 4
  %4 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 2), align 8
  %5 = load i64, i64* @SBAR_LEFT, align 8
  %6 = getelementptr inbounds i64, i64* %4, i64 %5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %9, %0
  %16 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 2), align 8
  %17 = load i64, i64* @SBAR_RIGHT, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
