; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_R_SplitLightVolume.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_R_SplitLightVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@numvolumes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VS_R_SplitLightVolume(i32* %0, %struct.TYPE_7__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @VS_SplitLightVolume(%struct.TYPE_7__* %13, %struct.TYPE_7__* %11, i32* %14, double 1.000000e-01)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %92

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 11
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 11
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(i32 %20, i32 %23, i32 4)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @memcpy(i32 %26, i32 %29, i32 4)
  %31 = load i32, i32* @numvolumes, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @numvolumes, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 9
  store i64 %33, i64* %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 8
  store i32 %37, i32* %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 7
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 6
  store i32 %49, i32* %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  store i32 %57, i32* %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %18
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memcpy(i32 %65, i32 %68, i32 4)
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memcpy(i32 %71, i32 %74, i32 4)
  br label %76

76:                                               ; preds = %63, %18
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i64 %79, i64* %80, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @VS_R_FloodLight(i32* %81, %struct.TYPE_7__* %11, i32 %82, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @VS_R_CastLightAtSurface(i32* %89, %struct.TYPE_7__* %11)
  br label %91

91:                                               ; preds = %88, %76
  br label %92

92:                                               ; preds = %91, %5
  %93 = load i32, i32* %12, align 4
  ret i32 %93
}

declare dso_local i32 @VS_SplitLightVolume(%struct.TYPE_7__*, %struct.TYPE_7__*, i32*, double) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @VS_R_FloodLight(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @VS_R_CastLightAtSurface(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
