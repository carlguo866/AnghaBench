; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DRotate.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DRotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { double, i8*, i8*, i8*, i64, i64, i32* }

@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@d2dBlack = common dso_local global i32 0, align 4
@d2dWhite = common dso_local global i32 0, align 4
@d2dForestGreen = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i8* null, align 8
@uiDrawLineJoinMiter = common dso_local global i8* null, align 8
@uiDrawDefaultMiterLimit = common dso_local global i8* null, align 8
@uiPi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @drawD2DRotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawD2DRotate(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 6
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 6
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @uiDrawFillModeWinding, align 4
  %17 = call i32* @uiDrawNewPath(i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @uiDrawPathAddRectangle(i32* %18, double 4.380000e+02, double 3.015000e+02, double 6.000000e+01, double 6.000000e+01)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @uiDrawPathEnd(i32* %20)
  %22 = load i32, i32* @d2dBlack, align 4
  %23 = call i32 @d2dSolidBrush(i32* %4, i32 %22, double 1.000000e+00)
  %24 = load i32, i32* @d2dWhite, align 4
  %25 = call i32 @d2dSolidBrush(i32* %5, i32 %24, double 5.000000e-01)
  %26 = load i32, i32* @d2dForestGreen, align 4
  %27 = call i32 @d2dSolidBrush(i32* %6, i32 %26, double 1.000000e+00)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store double 1.000000e+00, double* %28, align 8
  %29 = load i8*, i8** @uiDrawLineCapFlat, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i8* %29, i8** %30, align 8
  %31 = load i8*, i8** @uiDrawLineJoinMiter, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** @uiDrawDefaultMiterLimit, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store double 1.000000e+00, double* %35, align 8
  %36 = load i8*, i8** @uiDrawLineCapFlat, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** @uiDrawLineJoinMiter, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** @uiDrawDefaultMiterLimit, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @uiDrawSave(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @uiDrawStroke(i32 %48, i32* %49, i32* %4, %struct.TYPE_5__* %7)
  %51 = call i32 @uiDrawMatrixSetIdentity(i32* %9)
  %52 = load i32, i32* @uiPi, align 4
  %53 = sdiv i32 %52, 180
  %54 = sitofp i32 %53 to double
  %55 = fmul double 4.500000e+01, %54
  %56 = call i32 @uiDrawMatrixRotate(i32* %9, double 4.680000e+02, double 3.315000e+02, double %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @uiDrawTransform(i32 %59, i32* %9)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @uiDrawFill(i32 %63, i32* %64, i32* %5)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @uiDrawStroke(i32 %68, i32* %69, i32* %6, %struct.TYPE_5__* %8)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @uiDrawRestore(i32 %73)
  %75 = call i32 @uiDrawMatrixSetIdentity(i32* %9)
  %76 = call i32 @uiDrawMatrixTranslate(i32* %9, i32 -200, i32 -200)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @uiDrawTransform(i32 %79, i32* %9)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @uiDrawStroke(i32 %83, i32* %84, i32* %4, %struct.TYPE_5__* %7)
  %86 = call i32 @uiDrawMatrixSetIdentity(i32* %9)
  %87 = load i32, i32* @uiPi, align 4
  %88 = sdiv i32 %87, 180
  %89 = sitofp i32 %88 to double
  %90 = fmul double 4.500000e+01, %89
  %91 = call i32 @uiDrawMatrixRotate(i32* %9, double 4.380000e+02, double 3.015000e+02, double %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @uiDrawTransform(i32 %94, i32* %9)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @uiDrawFill(i32 %98, i32* %99, i32* %5)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @uiDrawStroke(i32 %103, i32* %104, i32* %6, %struct.TYPE_5__* %8)
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @uiDrawFreePath(i32* %106)
  ret void
}

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, double, double, double, double) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @d2dSolidBrush(i32*, i32, double) #1

declare dso_local i32 @uiDrawSave(i32) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @uiDrawMatrixSetIdentity(i32*) #1

declare dso_local i32 @uiDrawMatrixRotate(i32*, double, double, double) #1

declare dso_local i32 @uiDrawTransform(i32, i32*) #1

declare dso_local i32 @uiDrawFill(i32, i32*, i32*) #1

declare dso_local i32 @uiDrawRestore(i32) #1

declare dso_local i32 @uiDrawMatrixTranslate(i32*, i32, i32) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
