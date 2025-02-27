; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_kick_out_firmware_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_kick_out_firmware_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.apertures_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @radeon_kick_out_firmware_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_kick_out_firmware_fb(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.apertures_struct*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = call %struct.apertures_struct* @alloc_apertures(i32 1)
  store %struct.apertures_struct* %5, %struct.apertures_struct** %4, align 8
  %6 = load %struct.apertures_struct*, %struct.apertures_struct** %4, align 8
  %7 = icmp ne %struct.apertures_struct* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i32 @pci_resource_start(%struct.pci_dev* %12, i32 0)
  %14 = load %struct.apertures_struct*, %struct.apertures_struct** %4, align 8
  %15 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %13, i32* %18, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = call i32 @pci_resource_len(%struct.pci_dev* %19, i32 0)
  %21 = load %struct.apertures_struct*, %struct.apertures_struct** %4, align 8
  %22 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %20, i32* %25, align 4
  %26 = load %struct.apertures_struct*, %struct.apertures_struct** %4, align 8
  %27 = load i32, i32* @KBUILD_MODNAME, align 4
  %28 = call i32 @remove_conflicting_framebuffers(%struct.apertures_struct* %26, i32 %27, i32 0)
  %29 = load %struct.apertures_struct*, %struct.apertures_struct** %4, align 8
  %30 = call i32 @kfree(%struct.apertures_struct* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %11, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.apertures_struct* @alloc_apertures(i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @remove_conflicting_framebuffers(%struct.apertures_struct*, i32, i32) #1

declare dso_local i32 @kfree(%struct.apertures_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
