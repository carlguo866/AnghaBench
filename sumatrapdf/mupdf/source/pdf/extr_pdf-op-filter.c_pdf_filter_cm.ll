; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_pdf_filter_cm.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_pdf_filter_cm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { float, float, float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, float, float, float, float)* @pdf_filter_cm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_filter_cm(i32* %0, i32* %1, float %2, float %3, float %4, float %5, float %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %20 = load i32*, i32** %10, align 8
  store i32* %20, i32** %17, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %17, align 8
  %23 = call %struct.TYPE_8__* @gstate_to_update(i32* %21, i32* %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %18, align 8
  %24 = load float, float* %11, align 4
  %25 = fcmp oeq float %24, 1.000000e+00
  br i1 %25, label %26, label %42

26:                                               ; preds = %8
  %27 = load float, float* %12, align 4
  %28 = fcmp oeq float %27, 0.000000e+00
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load float, float* %13, align 4
  %31 = fcmp oeq float %30, 0.000000e+00
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load float, float* %14, align 4
  %34 = fcmp oeq float %33, 1.000000e+00
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load float, float* %15, align 4
  %37 = fcmp oeq float %36, 0.000000e+00
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load float, float* %16, align 4
  %40 = fcmp oeq float %39, 0.000000e+00
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %63

42:                                               ; preds = %38, %35, %32, %29, %26, %8
  %43 = load float, float* %11, align 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store float %43, float* %44, align 4
  %45 = load float, float* %12, align 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store float %45, float* %46, align 4
  %47 = load float, float* %13, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store float %47, float* %48, align 4
  %49 = load float, float* %14, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  store float %49, float* %50, align 4
  %51 = load float, float* %15, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  store float %51, float* %52, align 4
  %53 = load float, float* %16, align 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 5
  store float %53, float* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @fz_concat(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %19, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  br label %63

63:                                               ; preds = %42, %41
  ret void
}

declare dso_local %struct.TYPE_8__* @gstate_to_update(i32*, i32*) #1

declare dso_local i32 @fz_concat(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
