; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_categorymgr.c_CategoryMgr_Constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_categorymgr.c_CategoryMgr_Constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@CLASS_E_NOAGGREGATION = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@CategoryMgrVtbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CategoryMgr_Constructor(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @CLASS_E_NOAGGREGATION, align 4
  store i32 %10, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = call i32 (...) @GetProcessHeap()
  %13 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %14 = call %struct.TYPE_5__* @HeapAlloc(i32 %12, i32 %13, i32 16)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %11
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* @CategoryMgrVtbl, i32** %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = bitcast %struct.TYPE_4__* %26 to i32*
  %28 = load i32**, i32*** %5, align 8
  store i32* %27, i32** %28, align 8
  %29 = load i32**, i32*** %5, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %30)
  %32 = load i32, i32* @S_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %19, %17, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @TRACE(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
