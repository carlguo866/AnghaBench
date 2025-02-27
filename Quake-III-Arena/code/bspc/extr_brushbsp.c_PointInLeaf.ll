; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_PointInLeaf.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_PointInLeaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__** }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@mapplanes = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @PointInLeaf(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %42, %2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PLANENUM_LEAF, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %7
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mapplanes, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %17
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @DotProduct(i32 %19, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %13
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %33, i64 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %3, align 8
  br label %42

36:                                               ; preds = %13
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %39, i64 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %3, align 8
  br label %42

42:                                               ; preds = %36, %30
  br label %7

43:                                               ; preds = %7
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %44
}

declare dso_local i64 @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
