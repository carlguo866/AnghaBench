; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c___checkparam_dl.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c___checkparam_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_attr = type { i32, i64, i64, i64 }

@SCHED_FLAG_SUGOV = common dso_local global i32 0, align 4
@DL_SCALE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__checkparam_dl(%struct.sched_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sched_attr*, align 8
  store %struct.sched_attr* %0, %struct.sched_attr** %3, align 8
  %4 = load %struct.sched_attr*, %struct.sched_attr** %3, align 8
  %5 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SCHED_FLAG_SUGOV, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.sched_attr*, %struct.sched_attr** %3, align 8
  %13 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %61

17:                                               ; preds = %11
  %18 = load %struct.sched_attr*, %struct.sched_attr** %3, align 8
  %19 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DL_SCALE, align 8
  %22 = shl i64 1, %21
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %61

25:                                               ; preds = %17
  %26 = load %struct.sched_attr*, %struct.sched_attr** %3, align 8
  %27 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = and i64 %28, -9223372036854775808
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.sched_attr*, %struct.sched_attr** %3, align 8
  %33 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %34, -9223372036854775808
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %25
  store i32 0, i32* %2, align 4
  br label %61

38:                                               ; preds = %31
  %39 = load %struct.sched_attr*, %struct.sched_attr** %3, align 8
  %40 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.sched_attr*, %struct.sched_attr** %3, align 8
  %45 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sched_attr*, %struct.sched_attr** %3, align 8
  %48 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %43, %38
  %52 = load %struct.sched_attr*, %struct.sched_attr** %3, align 8
  %53 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sched_attr*, %struct.sched_attr** %3, align 8
  %56 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51, %43
  store i32 0, i32* %2, align 4
  br label %61

60:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %59, %37, %24, %16, %10
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
