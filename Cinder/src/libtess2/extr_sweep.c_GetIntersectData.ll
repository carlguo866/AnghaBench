; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_GetIntersectData.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_GetIntersectData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64* }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @GetIntersectData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetIntersectData(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3, %struct.TYPE_11__* %4, %struct.TYPE_11__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca [4 x i32], align 16
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %12, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %30 = call i32 @VertexWeights(%struct.TYPE_11__* %26, %struct.TYPE_11__* %27, %struct.TYPE_11__* %28, i32* %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %35 = call i32 @VertexWeights(%struct.TYPE_11__* %31, %struct.TYPE_11__* %32, %struct.TYPE_11__* %33, i32* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @CallCombine(i32* %36, %struct.TYPE_11__* %37, i32* %38, i32 %39)
  ret void
}

declare dso_local i32 @VertexWeights(%struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @CallCombine(i32*, %struct.TYPE_11__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
