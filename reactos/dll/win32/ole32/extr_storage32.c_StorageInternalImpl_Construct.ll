; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_StorageInternalImpl_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_StorageInternalImpl_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32, i32, i8*, i32, i8*, i32*, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@StorageInternalImpl_Vtbl = common dso_local global i32 0, align 4
@IPropertySetStorage_Vtbl = common dso_local global i32 0, align 4
@StorageInternalImpl_BaseVtbl = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, i32, i32)* @StorageInternalImpl_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @StorageInternalImpl_Construct(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @GetProcessHeap()
  %10 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %11 = call %struct.TYPE_10__* @HeapAlloc(i32 %9, i32 %10, i32 72)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %8, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %60

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 9
  %18 = call i32 @list_init(i32* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 8
  %22 = call i32 @list_init(i32* %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32* @StorageInternalImpl_Vtbl, i32** %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32* @IPropertySetStorage_Vtbl, i32** %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  store i32* @StorageInternalImpl_BaseVtbl, i32** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @STGM_CREATE, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i8*, i8** @FALSE, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  store i8* %41, i8** %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 8
  %55 = load i8*, i8** @FALSE, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store i8* %55, i8** %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %4, align 8
  br label %61

60:                                               ; preds = %3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %61

61:                                               ; preds = %60, %14
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %62
}

declare dso_local %struct.TYPE_10__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
