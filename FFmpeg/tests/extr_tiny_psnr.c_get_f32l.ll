; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_tiny_psnr.c_get_f32l.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_tiny_psnr.c_get_f32l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.av_intfloat32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32*)* @get_f32l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @get_f32l(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %union.av_intfloat32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 8
  %11 = or i32 %6, %10
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 16
  %16 = or i32 %11, %15
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 24
  %21 = or i32 %16, %20
  %22 = bitcast %union.av_intfloat32* %3 to i32*
  store i32 %21, i32* %22, align 4
  %23 = bitcast %union.av_intfloat32* %3 to float*
  %24 = load float, float* %23, align 4
  ret float %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
