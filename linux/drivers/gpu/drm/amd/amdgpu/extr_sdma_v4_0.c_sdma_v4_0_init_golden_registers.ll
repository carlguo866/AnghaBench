; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_init_golden_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_init_golden_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }

@golden_settings_sdma_4 = common dso_local global i32 0, align 4
@golden_settings_sdma_vg10 = common dso_local global i32 0, align 4
@golden_settings_sdma_vg12 = common dso_local global i32 0, align 4
@golden_settings_sdma0_4_2_init = common dso_local global i32 0, align 4
@golden_settings_sdma0_4_2 = common dso_local global i32 0, align 4
@golden_settings_sdma1_4_2 = common dso_local global i32 0, align 4
@golden_settings_sdma_arct = common dso_local global i32 0, align 4
@golden_settings_sdma_4_1 = common dso_local global i32 0, align 4
@golden_settings_sdma_rv2 = common dso_local global i32 0, align 4
@golden_settings_sdma_rv1 = common dso_local global i32 0, align 4
@golden_settings_sdma_4_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @sdma_v4_0_init_golden_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v4_0_init_golden_registers(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %79 [
    i32 130, label %6
    i32 129, label %17
    i32 128, label %28
    i32 133, label %44
    i32 132, label %50
    i32 131, label %73
  ]

6:                                                ; preds = %1
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = load i32, i32* @golden_settings_sdma_4, align 4
  %9 = load i32, i32* @golden_settings_sdma_4, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %7, i32 %8, i32 %10)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = load i32, i32* @golden_settings_sdma_vg10, align 4
  %14 = load i32, i32* @golden_settings_sdma_vg10, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %12, i32 %13, i32 %15)
  br label %80

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %19 = load i32, i32* @golden_settings_sdma_4, align 4
  %20 = load i32, i32* @golden_settings_sdma_4, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %18, i32 %19, i32 %21)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = load i32, i32* @golden_settings_sdma_vg12, align 4
  %25 = load i32, i32* @golden_settings_sdma_vg12, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %23, i32 %24, i32 %26)
  br label %80

28:                                               ; preds = %1
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = load i32, i32* @golden_settings_sdma0_4_2_init, align 4
  %31 = load i32, i32* @golden_settings_sdma0_4_2_init, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %29, i32 %30, i32 %32)
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %35 = load i32, i32* @golden_settings_sdma0_4_2, align 4
  %36 = load i32, i32* @golden_settings_sdma0_4_2, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %34, i32 %35, i32 %37)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = load i32, i32* @golden_settings_sdma1_4_2, align 4
  %41 = load i32, i32* @golden_settings_sdma1_4_2, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %39, i32 %40, i32 %42)
  br label %80

44:                                               ; preds = %1
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = load i32, i32* @golden_settings_sdma_arct, align 4
  %47 = load i32, i32* @golden_settings_sdma_arct, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %45, i32 %46, i32 %48)
  br label %80

50:                                               ; preds = %1
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %52 = load i32, i32* @golden_settings_sdma_4_1, align 4
  %53 = load i32, i32* @golden_settings_sdma_4_1, align 4
  %54 = call i32 @ARRAY_SIZE(i32 %53)
  %55 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %51, i32 %52, i32 %54)
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %58, 8
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %62 = load i32, i32* @golden_settings_sdma_rv2, align 4
  %63 = load i32, i32* @golden_settings_sdma_rv2, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %61, i32 %62, i32 %64)
  br label %72

66:                                               ; preds = %50
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %68 = load i32, i32* @golden_settings_sdma_rv1, align 4
  %69 = load i32, i32* @golden_settings_sdma_rv1, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %67, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %66, %60
  br label %80

73:                                               ; preds = %1
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %75 = load i32, i32* @golden_settings_sdma_4_3, align 4
  %76 = load i32, i32* @golden_settings_sdma_4_3, align 4
  %77 = call i32 @ARRAY_SIZE(i32 %76)
  %78 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %74, i32 %75, i32 %77)
  br label %80

79:                                               ; preds = %1
  br label %80

80:                                               ; preds = %79, %73, %72, %44, %28, %17, %6
  ret void
}

declare dso_local i32 @soc15_program_register_sequence(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
