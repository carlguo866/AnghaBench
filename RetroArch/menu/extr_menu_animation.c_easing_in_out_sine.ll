; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_in_out_sine.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_in_out_sine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float)* @easing_in_out_sine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @easing_in_out_sine(float %0, float %1, float %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %7, align 4
  %10 = fneg float %9
  %11 = fdiv float %10, 2.000000e+00
  %12 = load float, float* @M_PI, align 4
  %13 = load float, float* %5, align 4
  %14 = fmul float %12, %13
  %15 = load float, float* %8, align 4
  %16 = fdiv float %14, %15
  %17 = call i32 @cos(float %16)
  %18 = sub nsw i32 %17, 1
  %19 = sitofp i32 %18 to float
  %20 = fmul float %11, %19
  %21 = load float, float* %6, align 4
  %22 = fadd float %20, %21
  ret float %22
}

declare dso_local i32 @cos(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
