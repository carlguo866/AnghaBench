; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_d3dxof.c_IDirectXFileImpl_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_d3dxof.c_IDirectXFileImpl_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"(%p,%p)\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@DXFILEERR_BADALLOC = common dso_local global i32 0, align 4
@IDirectXFile_Vtbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"indexColor\00", align 1
@TOKEN_DWORD = common dso_local global i32 0, align 4
@TOKEN_FLOAT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IDirectXFileImpl_Create(i32* %0, %struct.TYPE_10__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %7, %struct.TYPE_10__** %8)
  %10 = call i32 (...) @GetProcessHeap()
  %11 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %12 = call %struct.TYPE_11__* @HeapAlloc(i32 %10, i32 %11, i32 24)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @DXFILEERR_BADALLOC, align 4
  store i32 %16, i32* %3, align 4
  br label %96

17:                                               ; preds = %2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32* @IDirectXFile_Vtbl, i32** %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strcpy(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 2, i32* %36, align 8
  %37 = load i32, i32* @TOKEN_DWORD, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  store i32 %37, i32* %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load i32, i32* @TOKEN_FLOAT, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  store i32 %54, i32* %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load i32, i32* @TRUE, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %71, i32* %81, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 4, i32* %91, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %93, %struct.TYPE_10__** %94, align 8
  %95 = load i32, i32* @S_OK, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %17, %15
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @TRACE(i8*, i32*, %struct.TYPE_10__**) #1

declare dso_local %struct.TYPE_11__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
