; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_relativity.c_last2CodeAre.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_relativity.c_last2CodeAre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@macroTapsLen = common dso_local global i32 0, align 4
@macroTaps = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @last2CodeAre(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %46, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @macroTapsLen, align 4
  %8 = sub nsw i32 %7, 2
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load i64*, i64** @macroTaps, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br label %17

17:                                               ; preds = %10, %5
  %18 = phi i1 [ false, %5 ], [ %16, %10 ]
  br i1 %18, label %19, label %49

19:                                               ; preds = %17
  %20 = load i64*, i64** @macroTaps, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = load i64*, i64** @macroTaps, align 8
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load i64*, i64** @macroTaps, align 8
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %50

45:                                               ; preds = %36, %27, %19
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %5

49:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
