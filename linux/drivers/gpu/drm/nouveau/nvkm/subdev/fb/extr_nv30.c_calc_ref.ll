; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv30.c_calc_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv30.c_calc_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fb*, i32, i32, i32)* @calc_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_ref(%struct.nvkm_fb* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_fb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %35, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul nsw i32 8, %17
  %19 = ashr i32 %16, %18
  %20 = and i32 %19, 255
  %21 = load %struct.nvkm_fb*, %struct.nvkm_fb** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @calc_bias(%struct.nvkm_fb* %21, i32 %22, i32 %23, i32 %24)
  %26 = add nsw i32 %20, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @clamp(i32 %27, i32 0, i32 31)
  %29 = or i32 128, %28
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 8, %30
  %32 = shl i32 %29, %31
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %12

38:                                               ; preds = %12
  %39 = load i32, i32* %10, align 4
  ret i32 %39
}

declare dso_local i32 @calc_bias(%struct.nvkm_fb*, i32, i32, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
