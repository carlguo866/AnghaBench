; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_MMDevPropStore_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_MMDevPropStore_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i64, i32*, %struct.TYPE_6__ }

@STGM_READ = common dso_local global i64 0, align 8
@STGM_WRITE = common dso_local global i64 0, align 8
@STGM_READWRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Invalid access %08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@MMDevPropVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.TYPE_6__**)* @MMDevPropStore_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MMDevPropStore_Create(i32* %0, i64 %1, %struct.TYPE_6__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @STGM_READ, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @STGM_WRITE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @STGM_READWRITE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %16, %12, %3
  %25 = call i32 (...) @GetProcessHeap()
  %26 = call %struct.TYPE_5__* @HeapAlloc(i32 %25, i32 0, i32 32)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %33, i32* %4, align 4
  br label %47

34:                                               ; preds = %24
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32* @MMDevPropVtbl, i32** %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @S_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %34, %32, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
