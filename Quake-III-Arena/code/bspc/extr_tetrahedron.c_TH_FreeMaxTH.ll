; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_tetrahedron.c_TH_FreeMaxTH.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_tetrahedron.c_TH_FreeMaxTH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32* }

@thworld = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TH_FreeMaxTH() #0 {
  %1 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 9), align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 9), align 8
  %5 = call i32 @FreeMemory(i32* %4)
  br label %6

6:                                                ; preds = %3, %0
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 9), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 8), align 8
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 7), align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 7), align 8
  %11 = call i32 @FreeMemory(i32* %10)
  br label %12

12:                                               ; preds = %9, %6
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 6), align 8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 5), align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 5), align 8
  %17 = call i32 @FreeMemory(i32* %16)
  br label %18

18:                                               ; preds = %15, %12
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 4), align 8
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 3), align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 3), align 8
  %23 = call i32 @FreeMemory(i32* %22)
  br label %24

24:                                               ; preds = %21, %18
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 2), align 8
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 1), align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 1), align 8
  %29 = call i32 @FreeMemory(i32* %28)
  br label %30

30:                                               ; preds = %27, %24
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thworld, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @FreeMemory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
