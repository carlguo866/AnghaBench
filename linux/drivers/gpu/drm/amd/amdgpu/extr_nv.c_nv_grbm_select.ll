; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_grbm_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_grbm_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@GRBM_GFX_CNTL = common dso_local global i32 0, align 4
@PIPEID = common dso_local global i32 0, align 4
@MEID = common dso_local global i32 0, align 4
@VMID = common dso_local global i32 0, align 4
@QUEUEID = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmGRBM_GFX_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv_grbm_select(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GRBM_GFX_CNTL, align 4
  %14 = load i32, i32* @PIPEID, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @REG_SET_FIELD(i32 %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @GRBM_GFX_CNTL, align 4
  %19 = load i32, i32* @MEID, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @REG_SET_FIELD(i32 %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @GRBM_GFX_CNTL, align 4
  %24 = load i32, i32* @VMID, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @REG_SET_FIELD(i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @GRBM_GFX_CNTL, align 4
  %29 = load i32, i32* @QUEUEID, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @GC, align 4
  %33 = load i32, i32* @mmGRBM_GFX_CNTL, align 4
  %34 = call i32 @SOC15_REG_OFFSET(i32 %32, i32 0, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @WREG32(i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
