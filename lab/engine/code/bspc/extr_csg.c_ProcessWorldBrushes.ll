; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_csg.c_ProcessWorldBrushes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_csg.c_ProcessWorldBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@map_mins = common dso_local global i64* null, align 8
@map_maxs = common dso_local global i64* null, align 8
@PLANENUM_LEAF = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@nocsg = common dso_local global i32 0, align 4
@cancelconversion = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @ProcessWorldBrushes(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i64*, i64** @map_mins, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 8
  %15 = load i64*, i64** %9, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %14, i64* %16, align 8
  %17 = load i64*, i64** @map_mins, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, 8
  %21 = load i64*, i64** %9, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %20, i64* %22, align 8
  %23 = load i64*, i64** @map_mins, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 8
  %27 = load i64*, i64** %9, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 2
  store i64 %26, i64* %28, align 8
  %29 = load i64*, i64** @map_maxs, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 8
  %33 = load i64*, i64** %10, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %32, i64* %34, align 8
  %35 = load i64*, i64** @map_maxs, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 8
  %39 = load i64*, i64** %10, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  store i64 %38, i64* %40, align 8
  %41 = load i64*, i64** @map_maxs, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 8
  %45 = load i64*, i64** %10, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  store i64 %44, i64* %46, align 8
  %47 = call i32 (...) @ResetBrushBSP()
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i64*, i64** %9, align 8
  %51 = load i64*, i64** %10, align 8
  %52 = call i32* @MakeBspBrushList(i32 %48, i32 %49, i64* %50, i64* %51)
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %77, label %55

55:                                               ; preds = %2
  %56 = call %struct.TYPE_8__* (...) @AllocNode()
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %8, align 8
  %57 = load i32, i32* @PLANENUM_LEAF, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @CONTENTS_SOLID, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = call %struct.TYPE_7__* (...) @Tree_Alloc()
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %7, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %66, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @VectorCopy(i64* %67, i32 %70)
  %72 = load i64*, i64** %10, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @VectorCopy(i64* %72, i32 %75)
  br label %94

77:                                               ; preds = %2
  %78 = load i32, i32* @nocsg, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32*, i32** %6, align 8
  %82 = call i32* @ChopBrushes(i32* %81)
  store i32* %82, i32** %6, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i64, i64* @cancelconversion, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @FreeBrushList(i32* %87)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %96

89:                                               ; preds = %83
  %90 = load i32*, i32** %6, align 8
  %91 = load i64*, i64** %9, align 8
  %92 = load i64*, i64** %10, align 8
  %93 = call %struct.TYPE_7__* @BrushBSP(i32* %90, i64* %91, i64* %92)
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %7, align 8
  br label %94

94:                                               ; preds = %89, %55
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %3, align 8
  br label %96

96:                                               ; preds = %94, %86
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %97
}

declare dso_local i32 @ResetBrushBSP(...) #1

declare dso_local i32* @MakeBspBrushList(i32, i32, i64*, i64*) #1

declare dso_local %struct.TYPE_8__* @AllocNode(...) #1

declare dso_local %struct.TYPE_7__* @Tree_Alloc(...) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

declare dso_local i32* @ChopBrushes(i32*) #1

declare dso_local i32 @FreeBrushList(i32*) #1

declare dso_local %struct.TYPE_7__* @BrushBSP(i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
