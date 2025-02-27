; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_get_available.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_get_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dsl_get_available(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = call i64 @dsl_get_referenced(%struct.TYPE_6__* %5)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i64 @dsl_dir_space_available(i32 %9, i32* null, i32 0, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = call %struct.TYPE_7__* @dsl_dataset_phys(%struct.TYPE_6__* %15)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %14, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = call %struct.TYPE_7__* @dsl_dataset_phys(%struct.TYPE_6__* %24)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %23, %27
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %20, %1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load i64, i64* %3, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = sub nsw i64 %46, %47
  %49 = call i64 @MIN(i64 %43, i64 %48)
  store i64 %49, i64* %4, align 8
  br label %51

50:                                               ; preds = %36
  store i64 0, i64* %4, align 8
  br label %51

51:                                               ; preds = %50, %42
  br label %52

52:                                               ; preds = %51, %31
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local i64 @dsl_get_referenced(%struct.TYPE_6__*) #1

declare dso_local i64 @dsl_dir_space_available(i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @dsl_dataset_phys(%struct.TYPE_6__*) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
