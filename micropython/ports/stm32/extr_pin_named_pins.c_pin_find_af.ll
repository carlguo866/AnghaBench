; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_pin_named_pins.c_pin_find_af.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_pin_named_pins.c_pin_find_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @pin_find_af(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %34, %3
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %4, align 8
  br label %40

33:                                               ; preds = %25, %19
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %9, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 1
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %8, align 8
  br label %13

39:                                               ; preds = %13
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %40

40:                                               ; preds = %39, %31
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
