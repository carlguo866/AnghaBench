; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_bus.c_host1x_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_bus.c_host1x_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.host1x_driver = type { i32 (%struct.host1x_device*)* }
%struct.host1x_device = type opaque
%struct.host1x_device.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @host1x_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host1x_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.host1x_driver*, align 8
  %5 = alloca %struct.host1x_device.0*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.host1x_driver* @to_host1x_driver(i32 %8)
  store %struct.host1x_driver* %9, %struct.host1x_driver** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.host1x_device.0* @to_host1x_device(%struct.device* %10)
  store %struct.host1x_device.0* %11, %struct.host1x_device.0** %5, align 8
  %12 = load %struct.host1x_driver*, %struct.host1x_driver** %4, align 8
  %13 = getelementptr inbounds %struct.host1x_driver, %struct.host1x_driver* %12, i32 0, i32 0
  %14 = load i32 (%struct.host1x_device*)*, i32 (%struct.host1x_device*)** %13, align 8
  %15 = icmp ne i32 (%struct.host1x_device*)* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.host1x_driver*, %struct.host1x_driver** %4, align 8
  %18 = getelementptr inbounds %struct.host1x_driver, %struct.host1x_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.host1x_device*)*, i32 (%struct.host1x_device*)** %18, align 8
  %20 = load %struct.host1x_device.0*, %struct.host1x_device.0** %5, align 8
  %21 = bitcast %struct.host1x_device.0* %20 to %struct.host1x_device*
  %22 = call i32 %19(%struct.host1x_device* %21)
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.host1x_driver* @to_host1x_driver(i32) #1

declare dso_local %struct.host1x_device.0* @to_host1x_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
