; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_BeginBSPFile.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_BeginBSPFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numBSPModels = common dso_local global i64 0, align 8
@numBSPNodes = common dso_local global i64 0, align 8
@numBSPBrushSides = common dso_local global i64 0, align 8
@numBSPLeafSurfaces = common dso_local global i64 0, align 8
@numBSPLeafBrushes = common dso_local global i64 0, align 8
@numBSPLeafs = common dso_local global i32 0, align 4
@numBSPDrawIndexes = common dso_local global i32 0, align 4
@bspDrawIndexes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BeginBSPFile() #0 {
  store i64 0, i64* @numBSPModels, align 8
  store i64 0, i64* @numBSPNodes, align 8
  store i64 0, i64* @numBSPBrushSides, align 8
  store i64 0, i64* @numBSPLeafSurfaces, align 8
  store i64 0, i64* @numBSPLeafBrushes, align 8
  store i32 1, i32* @numBSPLeafs, align 4
  store i32 6, i32* @numBSPDrawIndexes, align 4
  %1 = load i32*, i32** @bspDrawIndexes, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  store i32 0, i32* %2, align 4
  %3 = load i32*, i32** @bspDrawIndexes, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 1
  store i32 1, i32* %4, align 4
  %5 = load i32*, i32** @bspDrawIndexes, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 2
  store i32 2, i32* %6, align 4
  %7 = load i32*, i32** @bspDrawIndexes, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 3
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** @bspDrawIndexes, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 4
  store i32 2, i32* %10, align 4
  %11 = load i32*, i32** @bspDrawIndexes, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 5
  store i32 3, i32* %12, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
