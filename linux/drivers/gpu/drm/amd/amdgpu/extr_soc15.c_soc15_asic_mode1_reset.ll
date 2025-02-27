; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_asic_mode1_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_asic_mode1_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 (%struct.amdgpu_device*)* }

@.str = private unnamed_addr constant [17 x i8] c"GPU mode1 reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"GPU mode1 reset failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @soc15_asic_mode1_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc15_asic_mode1_reset(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = call i32 @amdgpu_atombios_scratch_regs_engine_hung(%struct.amdgpu_device* %6, i32 1)
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_info(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pci_clear_master(i32 %14)
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pci_save_state(i32 %18)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = call i32 @psp_gpu_reset(%struct.amdgpu_device* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pci_restore_state(i32 %32)
  store i64 0, i64* %3, align 8
  br label %34

34:                                               ; preds = %53, %29
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64 (%struct.amdgpu_device*)*, i64 (%struct.amdgpu_device*)** %44, align 8
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %47 = call i64 %45(%struct.amdgpu_device* %46)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 4294967295
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %56

51:                                               ; preds = %40
  %52 = call i32 @udelay(i32 1)
  br label %53

53:                                               ; preds = %51
  %54 = load i64, i64* %3, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %3, align 8
  br label %34

56:                                               ; preds = %50, %34
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = call i32 @amdgpu_atombios_scratch_regs_engine_hung(%struct.amdgpu_device* %57, i32 0)
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @amdgpu_atombios_scratch_regs_engine_hung(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @pci_clear_master(i32) #1

declare dso_local i32 @pci_save_state(i32) #1

declare dso_local i32 @psp_gpu_reset(%struct.amdgpu_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pci_restore_state(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
