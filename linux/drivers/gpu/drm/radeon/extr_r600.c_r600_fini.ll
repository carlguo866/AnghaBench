; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_fini(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = call i32 @radeon_pm_fini(%struct.radeon_device* %3)
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call i32 @radeon_audio_fini(%struct.radeon_device* %5)
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = call i32 @r600_cp_fini(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = call i32 @r600_irq_fini(%struct.radeon_device* %9)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = call i32 @uvd_v1_0_fini(%struct.radeon_device* %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = call i32 @radeon_uvd_fini(%struct.radeon_device* %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = call i32 @radeon_wb_fini(%struct.radeon_device* %21)
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %23)
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = call i32 @r600_pcie_gart_fini(%struct.radeon_device* %27)
  %29 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %30 = call i32 @r600_vram_scratch_fini(%struct.radeon_device* %29)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = call i32 @radeon_agp_fini(%struct.radeon_device* %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = call i32 @radeon_gem_fini(%struct.radeon_device* %33)
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = call i32 @radeon_fence_driver_fini(%struct.radeon_device* %35)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = call i32 @radeon_bo_fini(%struct.radeon_device* %37)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = call i32 @radeon_atombios_fini(%struct.radeon_device* %39)
  %41 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  ret void
}

declare dso_local i32 @radeon_pm_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_audio_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_fini(%struct.radeon_device*) #1

declare dso_local i32 @uvd_v1_0_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_uvd_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_pcie_gart_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_vram_scratch_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_gem_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atombios_fini(%struct.radeon_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
