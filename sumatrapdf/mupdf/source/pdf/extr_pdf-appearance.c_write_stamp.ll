; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_write_stamp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_write_stamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"BT\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/Times %g Tf\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%g %g Td\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" Tj\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ET\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i8*, float, float)* @write_stamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_stamp(i32* %0, i32* %1, i32* %2, i8* %3, float %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call float @measure_simple_string(i32* %14, i32* %15, i8* %16)
  %18 = load float, float* %12, align 4
  %19 = fmul float %17, %18
  store float %19, float* %13, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @fz_append_string(i32* %20, i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load float, float* %12, align 4
  %26 = fptosi float %25 to i32
  %27 = call i32 (i32*, i32*, i8*, i32, ...) @fz_append_printf(i32* %23, i32* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load float, float* %13, align 4
  %31 = fsub float 1.900000e+02, %30
  %32 = fdiv float %31, 2.000000e+00
  %33 = fptosi float %32 to i32
  %34 = load float, float* %11, align 4
  %35 = fpext float %34 to double
  %36 = call i32 (i32*, i32*, i8*, i32, ...) @fz_append_printf(i32* %28, i32* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %33, double %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @write_stamp_string(i32* %37, i32* %38, i32* %39, i8* %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @fz_append_string(i32* %42, i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @fz_append_string(i32* %45, i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local float @measure_simple_string(i32*, i32*, i8*) #1

declare dso_local i32 @fz_append_string(i32*, i32*, i8*) #1

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, i32, ...) #1

declare dso_local i32 @write_stamp_string(i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
