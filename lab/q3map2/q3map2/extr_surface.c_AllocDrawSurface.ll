; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_AllocDrawSurface.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_AllocDrawSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i64 }

@SURFACE_BAD = common dso_local global i64 0, align 8
@NUM_SURFACE_TYPES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"AllocDrawSurface: Invalid surface type %d specified\00", align 1
@numMapDrawSurfs = common dso_local global i64 0, align 8
@MAX_MAP_DRAW_SURFS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"MAX_MAP_DRAW_SURFS (%d) exceeded\00", align 1
@mapDrawSurfs = common dso_local global %struct.TYPE_5__* null, align 8
@defaultFogNum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @AllocDrawSurface(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @SURFACE_BAD, align 8
  %6 = icmp sle i64 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @NUM_SURFACE_TYPES, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7, %1
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @Error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %12)
  br label %14

14:                                               ; preds = %11, %7
  %15 = load i64, i64* @numMapDrawSurfs, align 8
  %16 = load i64, i64* @MAX_MAP_DRAW_SURFS, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, i64* @MAX_MAP_DRAW_SURFS, align 8
  %20 = call i32 @Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mapDrawSurfs, align 8
  %23 = load i64, i64* @numMapDrawSurfs, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %23
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %3, align 8
  %25 = load i64, i64* @numMapDrawSurfs, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* @numMapDrawSurfs, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = call i32 @memset(%struct.TYPE_5__* %27, i32 0, i32 32)
  %29 = load i64, i64* %2, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load i32, i32* @defaultFogNum, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 -1, i32* %38, align 4
  %39 = load i64, i64* @numMapDrawSurfs, align 8
  %40 = sub i64 %39, 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %43
}

declare dso_local i32 @Error(i8*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
