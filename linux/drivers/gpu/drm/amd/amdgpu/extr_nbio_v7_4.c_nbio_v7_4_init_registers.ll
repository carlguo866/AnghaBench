; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v7_4.c_nbio_v7_4_init_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v7_4.c_nbio_v7_4_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@smnPCIE_CI_CNTL = common dso_local global i32 0, align 4
@PCIE_CI_CNTL = common dso_local global i32 0, align 4
@CI_SLV_ORDERING_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @nbio_v7_4_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_v7_4_init_registers(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @smnPCIE_CI_CNTL, align 4
  %6 = call i64 @RREG32_PCIE(i32 %5)
  store i64 %6, i64* %4, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i32, i32* @PCIE_CI_CNTL, align 4
  %9 = load i32, i32* @CI_SLV_ORDERING_DIS, align 4
  %10 = call i64 @REG_SET_FIELD(i64 %7, i32 %8, i32 %9, i32 1)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @smnPCIE_CI_CNTL, align 4
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @WREG32_PCIE(i32 %15, i64 %16)
  br label %18

18:                                               ; preds = %14, %1
  ret void
}

declare dso_local i64 @RREG32_PCIE(i32) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i32) #1

declare dso_local i32 @WREG32_PCIE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
