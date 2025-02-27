; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_vga_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_vga_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_CONFIG_CNTL = common dso_local global i32 0, align 4
@RADEON_CFG_VGA_RAM_EN = common dso_local global i32 0, align 4
@RADEON_CFG_VGA_IO_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r100_vga_set_state(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @RADEON_CONFIG_CNTL, align 4
  %7 = call i32 @RREG32(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* @RADEON_CFG_VGA_RAM_EN, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @RADEON_CFG_VGA_IO_DIS, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @RADEON_CFG_VGA_IO_DIS, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %10
  %24 = load i32, i32* @RADEON_CONFIG_CNTL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @WREG32(i32 %24, i32 %25)
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
