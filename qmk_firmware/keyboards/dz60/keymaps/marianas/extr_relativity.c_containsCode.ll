; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_relativity.c_containsCode.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_relativity.c_containsCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@macroTapsLen = common dso_local global i32 0, align 4
@macroTaps = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @containsCode(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @macroTapsLen, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i64*, i64** @macroTaps, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi i1 [ false, %5 ], [ %15, %9 ]
  br i1 %17, label %18, label %31

18:                                               ; preds = %16
  %19 = load i64*, i64** @macroTaps, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %32

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %5

31:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
