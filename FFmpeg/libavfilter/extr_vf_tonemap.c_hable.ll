; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tonemap.c_hable.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tonemap.c_hable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @hable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @hable(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %2, align 4
  store float 0x3FC3333340000000, float* %3, align 4
  store float 5.000000e-01, float* %4, align 4
  store float 0x3FB99999A0000000, float* %5, align 4
  store float 0x3FC99999A0000000, float* %6, align 4
  store float 0x3F947AE140000000, float* %7, align 4
  store float 0x3FD3333340000000, float* %8, align 4
  %9 = load float, float* %2, align 4
  %10 = load float, float* %2, align 4
  %11 = load float, float* %3, align 4
  %12 = fmul float %10, %11
  %13 = load float, float* %4, align 4
  %14 = load float, float* %5, align 4
  %15 = fmul float %13, %14
  %16 = fadd float %12, %15
  %17 = fmul float %9, %16
  %18 = load float, float* %6, align 4
  %19 = load float, float* %7, align 4
  %20 = fmul float %18, %19
  %21 = fadd float %17, %20
  %22 = load float, float* %2, align 4
  %23 = load float, float* %2, align 4
  %24 = load float, float* %3, align 4
  %25 = fmul float %23, %24
  %26 = load float, float* %4, align 4
  %27 = fadd float %25, %26
  %28 = fmul float %22, %27
  %29 = load float, float* %6, align 4
  %30 = load float, float* %8, align 4
  %31 = fmul float %29, %30
  %32 = fadd float %28, %31
  %33 = fdiv float %21, %32
  %34 = load float, float* %7, align 4
  %35 = load float, float* %8, align 4
  %36 = fdiv float %34, %35
  %37 = fsub float %33, %36
  ret float %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
