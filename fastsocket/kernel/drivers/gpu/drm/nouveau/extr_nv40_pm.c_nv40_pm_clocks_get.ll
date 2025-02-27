; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv40_pm.c_nv40_pm_clocks_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv40_pm.c_nv40_pm_clocks_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_level = type { i32, i8*, i8* }
%struct.nouveau_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv40_pm_clocks_get(%struct.drm_device* %0, %struct.nouveau_pm_level* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_pm_level*, align 8
  %5 = alloca %struct.nouveau_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.nouveau_pm_level* %1, %struct.nouveau_pm_level** %4, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %7)
  store %struct.nouveau_device* %8, %struct.nouveau_device** %5, align 8
  %9 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %10 = call i32 @nv_rd32(%struct.nouveau_device* %9, i32 49216)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 3
  %14 = ashr i32 %13, 0
  %15 = call i8* @read_clk(%struct.drm_device* %11, i32 %14)
  %16 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 48
  %21 = ashr i32 %20, 4
  %22 = call i8* @read_clk(%struct.drm_device* %18, i32 %21)
  %23 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %24 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = call i32 @read_pll_2(%struct.drm_device* %25, i32 16416)
  %27 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %28 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  ret i32 0
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i8* @read_clk(%struct.drm_device*, i32) #1

declare dso_local i32 @read_pll_2(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
