; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clocksource.c_timecounter_cyc2time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clocksource.c_timecounter_cyc2time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timecounter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timecounter_cyc2time(%struct.timecounter* %0, i32 %1) #0 {
  %3 = alloca %struct.timecounter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timecounter* %0, %struct.timecounter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %9 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %7, %10
  %12 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %13 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %11, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %20 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 2
  %25 = icmp sgt i32 %18, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %2
  %27 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %28 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %33 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %31, %36
  store i32 %37, i32* %5, align 4
  %38 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %39 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %42 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @cyclecounter_cyc2ns(%struct.TYPE_2__* %43, i32 %44)
  %46 = sub nsw i32 %40, %45
  store i32 %46, i32* %6, align 4
  br label %57

47:                                               ; preds = %2
  %48 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %49 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @cyclecounter_cyc2ns(%struct.TYPE_2__* %50, i32 %51)
  %53 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %54 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %47, %26
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @cyclecounter_cyc2ns(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
