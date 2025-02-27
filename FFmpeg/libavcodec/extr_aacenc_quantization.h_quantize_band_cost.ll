; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_quantization.h_quantize_band_cost.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_quantization.h_quantize_band_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AACEncContext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.AACEncContext*, float*, float*, i32, i32, i32, float, float, i32*, float*, i32)* @quantize_band_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @quantize_band_cost(%struct.AACEncContext* %0, float* %1, float* %2, i32 %3, i32 %4, i32 %5, float %6, float %7, i32* %8, float* %9, i32 %10) #0 {
  %12 = alloca %struct.AACEncContext*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32*, align 8
  %21 = alloca float*, align 8
  %22 = alloca i32, align 4
  store %struct.AACEncContext* %0, %struct.AACEncContext** %12, align 8
  store float* %1, float** %13, align 8
  store float* %2, float** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store float %6, float* %18, align 4
  store float %7, float* %19, align 4
  store i32* %8, i32** %20, align 8
  store float* %9, float** %21, align 8
  store i32 %10, i32* %22, align 4
  %23 = load %struct.AACEncContext*, %struct.AACEncContext** %12, align 8
  %24 = load float*, float** %13, align 8
  %25 = load float*, float** %14, align 8
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load float, float* %18, align 4
  %30 = load float, float* %19, align 4
  %31 = load i32*, i32** %20, align 8
  %32 = load float*, float** %21, align 8
  %33 = load i32, i32* %22, align 4
  %34 = call float @quantize_and_encode_band_cost(%struct.AACEncContext* %23, i32* null, float* %24, i32* null, float* %25, i32 %26, i32 %27, i32 %28, float %29, float %30, i32* %31, float* %32, i32 %33)
  ret float %34
}

declare dso_local float @quantize_and_encode_band_cost(%struct.AACEncContext*, i32*, float*, i32*, float*, i32, i32, i32, float, float, i32*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
