; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_G_BounceProjectile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_G_BounceProjectile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_BounceProjectile(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @VectorSubtract(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call float @DotProduct(i32 %16, i32 %17)
  store float %18, float* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load float, float* %11, align 4
  %21 = fmul float -2.000000e+00, %20
  %22 = fptosi float %21 to i32
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @VectorMA(i32 %19, i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @VectorNormalize(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @VectorMA(i32 %28, i32 8192, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
