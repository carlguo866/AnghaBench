; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IH_CNTL = common dso_local global i32 0, align 4
@IH_RB_CNTL = common dso_local global i32 0, align 4
@ENABLE_INTR = common dso_local global i32 0, align 4
@IH_RB_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r600_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_enable_interrupts(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load i32, i32* @IH_CNTL, align 4
  %6 = call i32 @RREG32(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @IH_RB_CNTL, align 4
  %8 = call i32 @RREG32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @ENABLE_INTR, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @IH_RB_ENABLE, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @IH_CNTL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @WREG32(i32 %15, i32 %16)
  %18 = load i32, i32* @IH_RB_CNTL, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @WREG32(i32 %18, i32 %19)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
