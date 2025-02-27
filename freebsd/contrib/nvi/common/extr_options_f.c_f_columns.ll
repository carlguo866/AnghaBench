; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_options_f.c_f_columns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_options_f.c_f_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MINIMUM_SCREEN_COLS = common dso_local global i64 0, align 8
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"040|Screen columns too small, less than %d\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"041|Screen columns too large, greater than %d\00", align 1
@MAXIMUM_SCREEN_COLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_columns(i32* %0, i32* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MINIMUM_SCREEN_COLS, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @M_ERR, align 4
  %17 = load i64, i64* @MINIMUM_SCREEN_COLS, align 8
  %18 = call i32 @msgq(i32* %15, i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %17)
  store i32 1, i32* %5, align 4
  br label %28

19:                                               ; preds = %4
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 500
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @M_ERR, align 4
  %26 = call i32 @msgq(i32* %24, i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 500)
  store i32 1, i32* %5, align 4
  br label %28

27:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %23, %14
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @msgq(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
