; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_switcheroo_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_switcheroo_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.drm_device = type { i8*, i32 }
%struct.TYPE_3__ = type { i32 }

@PM_EVENT_SUSPEND = common dso_local global i32 0, align 4
@VGA_SWITCHEROO_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"switched on\0A\00", align 1
@DRM_SWITCH_POWER_CHANGING = common dso_local global i8* null, align 8
@PCI_D0 = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_ON = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"switched off\0A\00", align 1
@DRM_SWITCH_POWER_OFF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @i915_switcheroo_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_switcheroo_set_state(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.drm_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.drm_device* %8, %struct.drm_device** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %10 = load i32, i32* @PM_EVENT_SUSPEND, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @VGA_SWITCHEROO_ON, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** @DRM_SWITCH_POWER_CHANGING, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PCI_D0, align 4
  %23 = call i32 @pci_set_power_state(i32 %21, i32 %22)
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = call i32 @i915_resume(%struct.drm_device* %24)
  %26 = load i8*, i8** @DRM_SWITCH_POWER_ON, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %41

29:                                               ; preds = %2
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8*, i8** @DRM_SWITCH_POWER_CHANGING, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @i915_suspend(%struct.drm_device* %34, i32 %36)
  %38 = load i8*, i8** @DRM_SWITCH_POWER_OFF, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %29, %14
  ret void
}

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pci_set_power_state(i32, i32) #1

declare dso_local i32 @i915_resume(%struct.drm_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @i915_suspend(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
