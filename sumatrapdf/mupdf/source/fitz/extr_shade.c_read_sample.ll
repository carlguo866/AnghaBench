; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_read_sample.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_read_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32*, i32*, i32, float, float)* @read_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @read_sample(i32* %0, i32* %1, i32 %2, float %3, float %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @powf(i32 2, i32 %12)
  %14 = sub nsw i32 %13, 1
  %15 = sdiv i32 1, %14
  %16 = sitofp i32 %15 to float
  store float %16, float* %11, align 4
  %17 = load float, float* %9, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call float @fz_read_bits(i32* %18, i32* %19, i32 %20)
  %22 = load float, float* %10, align 4
  %23 = load float, float* %9, align 4
  %24 = fsub float %22, %23
  %25 = fmul float %21, %24
  %26 = load float, float* %11, align 4
  %27 = fmul float %25, %26
  %28 = fadd float %17, %27
  ret float %28
}

declare dso_local i32 @powf(i32, i32) #1

declare dso_local float @fz_read_bits(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
