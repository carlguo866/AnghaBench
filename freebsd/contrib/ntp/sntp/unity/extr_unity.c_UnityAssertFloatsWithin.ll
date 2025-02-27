; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityAssertFloatsWithin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityAssertFloatsWithin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITY_SKIP_EXECUTION = common dso_local global i32 0, align 4
@UnityStrDelta = common dso_local global i32 0, align 4
@UNITY_FAIL_AND_BAIL = common dso_local global i32 0, align 4
@UnityStrExpected = common dso_local global i32 0, align 4
@UnityStrWas = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnityAssertFloatsWithin(float %0, float %1, float %2, i8* %3, i32 %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load float, float* %8, align 4
  %14 = load float, float* %7, align 4
  %15 = fsub float %13, %14
  store float %15, float* %11, align 4
  %16 = load float, float* %6, align 4
  store float %16, float* %12, align 4
  %17 = load i32, i32* @UNITY_SKIP_EXECUTION, align 4
  %18 = load float, float* %11, align 4
  %19 = fcmp olt float %18, 0.000000e+00
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load float, float* %11, align 4
  %22 = fsub float 0.000000e+00, %21
  store float %22, float* %11, align 4
  br label %23

23:                                               ; preds = %20, %5
  %24 = load float, float* %12, align 4
  %25 = fcmp olt float %24, 0.000000e+00
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load float, float* %12, align 4
  %28 = fsub float 0.000000e+00, %27
  store float %28, float* %12, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load float, float* %11, align 4
  %31 = fmul float %30, 0.000000e+00
  %32 = fcmp une float %31, 0.000000e+00
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load float, float* %12, align 4
  %35 = load float, float* %11, align 4
  %36 = fcmp olt float %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @UnityTestResultsFailBegin(i32 %38)
  %40 = load i32, i32* @UnityStrDelta, align 4
  %41 = call i32 @UnityPrint(i32 %40)
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @UnityAddMsgIfSpecified(i8* %42)
  %44 = load i32, i32* @UNITY_FAIL_AND_BAIL, align 4
  br label %45

45:                                               ; preds = %37, %33
  ret void
}

declare dso_local i32 @UnityTestResultsFailBegin(i32) #1

declare dso_local i32 @UnityPrint(i32) #1

declare dso_local i32 @UnityAddMsgIfSpecified(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
