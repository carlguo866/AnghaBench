; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_IsGoodVal.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_IsGoodVal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxErr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"(%s): Must be %f, But is %f \00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsGoodVal(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = sub nsw i64 %11, %12
  %14 = call i64 @fabs(i64 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @MaxErr, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* @MaxErr, align 8
  br label %20

20:                                               ; preds = %18, %4
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @Fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %25, i64 %26, i64 %27)
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %5, align 4
  br label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i64 @fabs(i64) #1

declare dso_local i32 @Fail(i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
