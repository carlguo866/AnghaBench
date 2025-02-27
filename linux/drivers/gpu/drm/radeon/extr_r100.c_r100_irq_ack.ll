; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_GEN_INT_STATUS = common dso_local global i32 0, align 4
@RADEON_SW_INT_TEST = common dso_local global i32 0, align 4
@RADEON_CRTC_VBLANK_STAT = common dso_local global i32 0, align 4
@RADEON_CRTC2_VBLANK_STAT = common dso_local global i32 0, align 4
@RADEON_FP_DETECT_STAT = common dso_local global i32 0, align 4
@RADEON_FP2_DETECT_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r100_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r100_irq_ack(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load i32, i32* @RADEON_GEN_INT_STATUS, align 4
  %6 = call i32 @RREG32(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @RADEON_SW_INT_TEST, align 4
  %8 = load i32, i32* @RADEON_CRTC_VBLANK_STAT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @RADEON_CRTC2_VBLANK_STAT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @RADEON_FP_DETECT_STAT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @RADEON_FP2_DETECT_STAT, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @RADEON_GEN_INT_STATUS, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @WREG32(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %23, %24
  ret i32 %25
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
