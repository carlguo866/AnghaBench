; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_get_vbios_boot_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_get_vbios_boot_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ci_vbios_boot_state = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@FirmwareInfo = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.ci_vbios_boot_state*)* @ci_get_vbios_boot_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_get_vbios_boot_values(%struct.radeon_device* %0, %struct.ci_vbios_boot_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.ci_vbios_boot_state*, align 8
  %6 = alloca %struct.radeon_mode_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.ci_vbios_boot_state* %1, %struct.ci_vbios_boot_state** %5, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  store %struct.radeon_mode_info* %13, %struct.radeon_mode_info** %6, align 8
  %14 = load i32, i32* @DATA, align 4
  %15 = load i32, i32* @FirmwareInfo, align 4
  %16 = call i32 @GetIndexIntoMasterTable(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %6, align 8
  %18 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @atom_parse_data_header(%struct.TYPE_4__* %19, i32 %20, i32* null, i32* %9, i32* %10, i64* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %2
  %24 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %6, align 8
  %25 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add nsw i64 %28, %29
  %31 = inttoptr i64 %30 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %8, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le16_to_cpu(i32 %34)
  %36 = load %struct.ci_vbios_boot_state*, %struct.ci_vbios_boot_state** %5, align 8
  %37 = getelementptr inbounds %struct.ci_vbios_boot_state, %struct.ci_vbios_boot_state* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le16_to_cpu(i32 %40)
  %42 = load %struct.ci_vbios_boot_state*, %struct.ci_vbios_boot_state** %5, align 8
  %43 = getelementptr inbounds %struct.ci_vbios_boot_state, %struct.ci_vbios_boot_state* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le16_to_cpu(i32 %46)
  %48 = load %struct.ci_vbios_boot_state*, %struct.ci_vbios_boot_state** %5, align 8
  %49 = getelementptr inbounds %struct.ci_vbios_boot_state, %struct.ci_vbios_boot_state* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %51 = call i32 @ci_get_current_pcie_speed(%struct.radeon_device* %50)
  %52 = load %struct.ci_vbios_boot_state*, %struct.ci_vbios_boot_state** %5, align 8
  %53 = getelementptr inbounds %struct.ci_vbios_boot_state, %struct.ci_vbios_boot_state* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %55 = call i32 @ci_get_current_pcie_lane_number(%struct.radeon_device* %54)
  %56 = load %struct.ci_vbios_boot_state*, %struct.ci_vbios_boot_state** %5, align 8
  %57 = getelementptr inbounds %struct.ci_vbios_boot_state, %struct.ci_vbios_boot_state* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @le32_to_cpu(i32 %60)
  %62 = load %struct.ci_vbios_boot_state*, %struct.ci_vbios_boot_state** %5, align 8
  %63 = getelementptr inbounds %struct.ci_vbios_boot_state, %struct.ci_vbios_boot_state* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @le32_to_cpu(i32 %66)
  %68 = load %struct.ci_vbios_boot_state*, %struct.ci_vbios_boot_state** %5, align 8
  %69 = getelementptr inbounds %struct.ci_vbios_boot_state, %struct.ci_vbios_boot_state* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  store i32 0, i32* %3, align 4
  br label %73

70:                                               ; preds = %2
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_4__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @ci_get_current_pcie_speed(%struct.radeon_device*) #1

declare dso_local i32 @ci_get_current_pcie_lane_number(%struct.radeon_device*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
