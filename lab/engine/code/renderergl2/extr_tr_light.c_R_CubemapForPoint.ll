; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_light.c_R_CubemapForPoint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_light.c_R_CubemapForPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@r_cubeMapping = common dso_local global %struct.TYPE_6__* null, align 8
@tr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@WORLD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_CubemapForPoint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_cubeMapping, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %12
  %16 = load i64, i64* @WORLD_SIZE, align 8
  %17 = sitofp i64 %16 to float
  %18 = load i64, i64* @WORLD_SIZE, align 8
  %19 = sitofp i64 %18 to float
  %20 = fmul float %17, %19
  %21 = fptosi float %20 to i64
  store i64 %21, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %46, %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 1), align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @VectorSubtract(i32 %27, i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @DotProduct(i32 %36, i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load i64, i64* %7, align 8
  store i64 %43, i64* %5, align 8
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %22

49:                                               ; preds = %22
  br label %50

50:                                               ; preds = %49, %12, %1
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  ret i32 %52
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i64 @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
