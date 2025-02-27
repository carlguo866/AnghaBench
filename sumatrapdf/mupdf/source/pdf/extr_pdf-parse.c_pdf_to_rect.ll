; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-parse.c_pdf_to_rect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-parse.c_pdf_to_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@fz_empty_rect = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_to_rect(%struct.TYPE_4__* noalias sret %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i32* %1, i32** %4, align 8
  store i32* %2, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @pdf_is_array(i32* %10, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = bitcast %struct.TYPE_4__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_4__* @fz_empty_rect to i8*), i64 32, i1 false)
  br label %45

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call float @pdf_array_get_real(i32* %17, i32* %18, i32 0)
  store float %19, float* %6, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call float @pdf_array_get_real(i32* %20, i32* %21, i32 1)
  store float %22, float* %7, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call float @pdf_array_get_real(i32* %23, i32* %24, i32 2)
  store float %25, float* %8, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call float @pdf_array_get_real(i32* %26, i32* %27, i32 3)
  store float %28, float* %9, align 4
  %29 = load float, float* %6, align 4
  %30 = load float, float* %8, align 4
  %31 = call i8* @fz_min(float %29, float %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  store i8* %31, i8** %32, align 8
  %33 = load float, float* %7, align 4
  %34 = load float, float* %9, align 4
  %35 = call i8* @fz_min(float %33, float %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = load float, float* %6, align 4
  %38 = load float, float* %8, align 4
  %39 = call i8* @fz_max(float %37, float %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  %41 = load float, float* %7, align 4
  %42 = load float, float* %9, align 4
  %43 = call i8* @fz_max(float %41, float %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  br label %45

45:                                               ; preds = %16, %14
  ret void
}

declare dso_local i32 @pdf_is_array(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @pdf_array_get_real(i32*, i32*, i32) #1

declare dso_local i8* @fz_min(float, float) #1

declare dso_local i8* @fz_max(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
