; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_KeyEventSink_Constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_KeyEventSink_Constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@KeyEventSink_KeyEventSinkVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__**)* @KeyEventSink_Constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KeyEventSink_Constructor(%struct.TYPE_6__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  %5 = call i32 (...) @GetProcessHeap()
  %6 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %7 = call %struct.TYPE_5__* @HeapAlloc(i32 %5, i32 %6, i32 16)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32* @KeyEventSink_KeyEventSinkVtbl, i32** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %20, align 8
  %21 = load i32, i32* @S_OK, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %12, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
