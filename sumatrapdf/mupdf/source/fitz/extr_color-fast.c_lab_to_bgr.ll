; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_lab_to_bgr.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_lab_to_bgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float*, float*)* @lab_to_bgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lab_to_bgr(i32* %0, i32* %1, float* %2, float* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca [3 x float], align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load float*, float** %7, align 8
  %13 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 0
  %14 = call i32 @lab_to_rgb(i32* %10, i32* %11, float* %12, float* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 0
  %18 = load float*, float** %8, align 8
  %19 = call i32 @rgb_to_bgr(i32* %15, i32* %16, float* %17, float* %18)
  ret void
}

declare dso_local i32 @lab_to_rgb(i32*, i32*, float*, float*) #1

declare dso_local i32 @rgb_to_bgr(i32*, i32*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
