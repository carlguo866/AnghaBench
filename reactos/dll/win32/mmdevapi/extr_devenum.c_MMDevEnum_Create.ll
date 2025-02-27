; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_MMDevEnum_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_MMDevEnum_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@MMDevEnumerator = common dso_local global %struct.TYPE_5__* null, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@MMDevEnumVtbl = common dso_local global i32 0, align 4
@eRender = common dso_local global i32 0, align 4
@eCapture = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MMDevEnum_Create(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MMDevEnumerator, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = call i32 (...) @GetProcessHeap()
  %12 = call %struct.TYPE_5__* @HeapAlloc(i32 %11, i32 0, i32 16)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load i8**, i8*** %5, align 8
  store i8* null, i8** %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %17, i32* %3, align 4
  br label %36

18:                                               ; preds = %10
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32* @MMDevEnumVtbl, i32** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** @MMDevEnumerator, align 8
  %25 = call i32 (...) @load_devices_from_reg()
  %26 = load i32, i32* @eRender, align 4
  %27 = call i32 @load_driver_devices(i32 %26)
  %28 = load i32, i32* @eCapture, align 4
  %29 = call i32 @load_driver_devices(i32 %28)
  br label %30

30:                                               ; preds = %18, %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = call i32 @IMMDeviceEnumerator_QueryInterface(%struct.TYPE_6__* %32, i32 %33, i8** %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @load_devices_from_reg(...) #1

declare dso_local i32 @load_driver_devices(i32) #1

declare dso_local i32 @IMMDeviceEnumerator_QueryInterface(%struct.TYPE_6__*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
