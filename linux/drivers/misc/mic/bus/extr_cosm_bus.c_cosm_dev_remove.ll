; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/bus/extr_cosm_bus.c_cosm_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/bus/extr_cosm_bus.c_cosm_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cosm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cosm_driver = type { i32 (%struct.cosm_device.0*)* }
%struct.cosm_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @cosm_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cosm_dev_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.cosm_device*, align 8
  %4 = alloca %struct.cosm_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.cosm_device* @dev_to_cosm(%struct.device* %5)
  store %struct.cosm_device* %6, %struct.cosm_device** %3, align 8
  %7 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %8 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.cosm_driver* @drv_to_cosm(i32 %10)
  store %struct.cosm_driver* %11, %struct.cosm_driver** %4, align 8
  %12 = load %struct.cosm_driver*, %struct.cosm_driver** %4, align 8
  %13 = getelementptr inbounds %struct.cosm_driver, %struct.cosm_driver* %12, i32 0, i32 0
  %14 = load i32 (%struct.cosm_device.0*)*, i32 (%struct.cosm_device.0*)** %13, align 8
  %15 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %16 = bitcast %struct.cosm_device* %15 to %struct.cosm_device.0*
  %17 = call i32 %14(%struct.cosm_device.0* %16)
  ret i32 0
}

declare dso_local %struct.cosm_device* @dev_to_cosm(%struct.device*) #1

declare dso_local %struct.cosm_driver* @drv_to_cosm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
