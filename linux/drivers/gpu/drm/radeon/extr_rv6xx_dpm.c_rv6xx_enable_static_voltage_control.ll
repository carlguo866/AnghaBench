; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_enable_static_voltage_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_enable_static_voltage_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv6xx_ps = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SET_VOLTAGE_TYPE_ASIC_VDDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, i32)* @rv6xx_enable_static_voltage_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_enable_static_voltage_control(%struct.radeon_device* %0, %struct.radeon_ps* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rv6xx_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %9 = call %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps* %8)
  store %struct.rv6xx_ps* %9, %struct.rv6xx_ps** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %14 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %7, align 8
  %15 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %19 = call i32 @radeon_atom_set_voltage(%struct.radeon_device* %13, i32 %17, i32 %18)
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = call i32 @rv6xx_get_master_voltage_mask(%struct.radeon_device* %22)
  %24 = call i32 @r600_voltage_control_deactivate_static_control(%struct.radeon_device* %21, i32 %23)
  br label %25

25:                                               ; preds = %20, %12
  ret void
}

declare dso_local %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @radeon_atom_set_voltage(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_voltage_control_deactivate_static_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_get_master_voltage_mask(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
