; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pci_get_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pci_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i64, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to allocate IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @drm_pci_get_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_pci_get_irq(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %2, align 4
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SYS_RES_IRQ, align 4
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 3
  %19 = load i32, i32* @RF_SHAREABLE, align 4
  %20 = call i64 @bus_alloc_resource_any(i32 %15, i32 %16, i32* %18, i32 %19)
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %12
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %43

32:                                               ; preds = %12
  %33 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @rman_get_start(i64 %35)
  %37 = trunc i64 %36 to i32
  %38 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %32, %27, %8
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @rman_get_start(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
