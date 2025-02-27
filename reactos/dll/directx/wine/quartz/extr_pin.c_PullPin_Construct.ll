; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_pin.c_PullPin_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_pin.c_PullPin_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@PINDIR_INPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Pin direction(%x) != PINDIR_INPUT\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PullPin_Construct(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32**, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32** %9, i32*** %21, align 8
  %23 = load i32**, i32*** %21, align 8
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PINDIR_INPUT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %10
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %34, i32* %11, align 4
  br label %65

35:                                               ; preds = %10
  %36 = call %struct.TYPE_10__* @CoTaskMemAlloc(i32 4)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %22, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %40, i32* %11, align 4
  br label %65

41:                                               ; preds = %35
  %42 = load i32*, i32** %12, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %20, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %52 = call i32 @PullPin_Init(i32* %42, %struct.TYPE_11__* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, %struct.TYPE_10__* %51)
  %53 = call i64 @SUCCEEDED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32**, i32*** %21, align 8
  store i32* %58, i32** %59, align 8
  %60 = load i32, i32* @S_OK, align 4
  store i32 %60, i32* %11, align 4
  br label %65

61:                                               ; preds = %41
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %63 = call i32 @CoTaskMemFree(%struct.TYPE_10__* %62)
  %64 = load i32, i32* @E_FAIL, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %55, %39, %29
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local %struct.TYPE_10__* @CoTaskMemAlloc(i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @PullPin_Init(i32*, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
