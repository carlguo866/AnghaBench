; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_i965_do_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_i965_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@I965_GDRST = common dso_local global i32 0, align 4
@GRDOM_RENDER = common dso_local global i32 0, align 4
@GRDOM_RESET_ENABLE = common dso_local global i32 0, align 4
@GRDOM_MEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @i965_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i965_do_reset(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @I965_GDRST, align 4
  %10 = call i32 @pci_read_config_byte(i32 %8, i32 %9, i32* %5)
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @I965_GDRST, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @GRDOM_RENDER, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @GRDOM_RESET_ENABLE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @pci_write_config_byte(i32 %13, i32 %14, i32 %19)
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = call i32 @i965_reset_complete(%struct.drm_device* %21)
  %23 = call i32 @wait_for(i32 %22, i32 500)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %47

28:                                               ; preds = %1
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I965_GDRST, align 4
  %33 = call i32 @pci_read_config_byte(i32 %31, i32 %32, i32* %5)
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @I965_GDRST, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @GRDOM_MEDIA, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @GRDOM_RESET_ENABLE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @pci_write_config_byte(i32 %36, i32 %37, i32 %42)
  %44 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %45 = call i32 @i965_reset_complete(%struct.drm_device* %44)
  %46 = call i32 @wait_for(i32 %45, i32 500)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %28, %26
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i32 @i965_reset_complete(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
