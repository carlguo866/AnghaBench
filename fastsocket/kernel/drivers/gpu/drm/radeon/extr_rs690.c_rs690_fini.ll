; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs690.c_rs690_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs690.c_rs690_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs690_fini(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = call i32 @r600_audio_fini(%struct.radeon_device* %3)
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call i32 @r100_cp_fini(%struct.radeon_device* %5)
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = call i32 @radeon_wb_fini(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %9)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = call i32 @radeon_gem_fini(%struct.radeon_device* %11)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = call i32 @rs400_gart_fini(%struct.radeon_device* %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %15)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = call i32 @radeon_fence_driver_fini(%struct.radeon_device* %17)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = call i32 @radeon_bo_fini(%struct.radeon_device* %19)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = call i32 @radeon_atombios_fini(%struct.radeon_device* %21)
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kfree(i32* %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  ret void
}

declare dso_local i32 @r600_audio_fini(%struct.radeon_device*) #1

declare dso_local i32 @r100_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_gem_fini(%struct.radeon_device*) #1

declare dso_local i32 @rs400_gart_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

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
