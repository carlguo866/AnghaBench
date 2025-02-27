; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/stddev/extr_stddev.c_grouping_flush_stddev.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/stddev/extr_stddev.c_grouping_flush_stddev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.grouping_stddev = type { i32 }

@RRDR_VALUE_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @grouping_flush_stddev(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.grouping_stddev*, align 8
  %6 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.grouping_stddev*
  store %struct.grouping_stddev* %11, %struct.grouping_stddev** %5, align 8
  %12 = load %struct.grouping_stddev*, %struct.grouping_stddev** %5, align 8
  %13 = getelementptr inbounds %struct.grouping_stddev, %struct.grouping_stddev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.grouping_stddev*, %struct.grouping_stddev** %5, align 8
  %21 = call double @stddev(%struct.grouping_stddev* %20)
  store double %21, double* %6, align 8
  %22 = load double, double* %6, align 8
  %23 = call i32 @calculated_number_isnumber(double %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  store double 0.000000e+00, double* %6, align 8
  %26 = load i32, i32* @RRDR_VALUE_EMPTY, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %25, %19
  br label %43

31:                                               ; preds = %2
  %32 = load %struct.grouping_stddev*, %struct.grouping_stddev** %5, align 8
  %33 = getelementptr inbounds %struct.grouping_stddev, %struct.grouping_stddev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store double 0.000000e+00, double* %6, align 8
  br label %42

37:                                               ; preds = %31
  store double 0.000000e+00, double* %6, align 8
  %38 = load i32, i32* @RRDR_VALUE_EMPTY, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %36
  br label %43

43:                                               ; preds = %42, %30
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = call i32 @grouping_reset_stddev(%struct.TYPE_6__* %44)
  %46 = load double, double* %6, align 8
  ret double %46
}

declare dso_local i64 @likely(i32) #1

declare dso_local double @stddev(%struct.grouping_stddev*) #1

declare dso_local i32 @calculated_number_isnumber(double) #1

declare dso_local i32 @grouping_reset_stddev(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
