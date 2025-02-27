; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v10_0.c_psp_v10_0_compare_sram_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v10_0.c_psp_v10_0_compare_sram_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_firmware_info = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*, %struct.amdgpu_firmware_info*, i32)* @psp_v10_0_compare_sram_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v10_0_compare_sram_data(%struct.psp_context* %0, %struct.amdgpu_firmware_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psp_context*, align 8
  %6 = alloca %struct.amdgpu_firmware_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.amdgpu_device*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %5, align 8
  store %struct.amdgpu_firmware_info* %1, %struct.amdgpu_firmware_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32* null, i32** %13, align 8
  %15 = load %struct.psp_context*, %struct.psp_context** %5, align 8
  %16 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %14, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @psp_v10_0_sram_map(%struct.amdgpu_device* %18, i32* %9, i32* %10, i32* %11, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @WREG32(i32 %25, i32 %26)
  %28 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %29 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  %31 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %32 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %13, align 8
  br label %35

35:                                               ; preds = %47, %24
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @RREG32(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %53

47:                                               ; preds = %39
  %48 = load i32*, i32** %13, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %13, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sub i32 %50, 4
  store i32 %51, i32* %12, align 4
  br label %35

52:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %46, %23
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @psp_v10_0_sram_map(%struct.amdgpu_device*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
