; ModuleID = '/home/carl/AnghaBench/linux/Documentation/scheduler/extr_sched-pelt.c_calc_accumulated_sum_32.c'
source_filename = "/home/carl/AnghaBench/linux/Documentation/scheduler/extr_sched-pelt.c_calc_accumulated_sum_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"static const u32 __accumulated_sum_N32[] = {\0A\09     0,\00", align 1
@n = common dso_local global i32 0, align 4
@HALFLIFE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%6d,\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\0A};\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_accumulated_sum_32() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @sum, align 4
  store i32 %3, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %5

5:                                                ; preds = %29, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @n, align 4
  %8 = load i32, i32* @HALFLIFE, align 4
  %9 = sdiv i32 %7, %8
  %10 = add nsw i32 %9, 1
  %11 = icmp sle i32 %6, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %5
  %13 = load i32, i32* %1, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = sdiv i32 %16, 2
  %18 = load i32, i32* @sum, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %15, %12
  %21 = load i32, i32* %1, align 4
  %22 = srem i32 %21, 6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32, i32* %2, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %5

32:                                               ; preds = %5
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
