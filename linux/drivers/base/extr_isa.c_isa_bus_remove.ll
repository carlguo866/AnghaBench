; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_isa.c_isa_bus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_isa.c_isa_bus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.isa_driver* }
%struct.isa_driver = type { i32 (%struct.device.0*, i32)* }
%struct.device.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @isa_bus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isa_bus_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.isa_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load %struct.isa_driver*, %struct.isa_driver** %6, align 8
  store %struct.isa_driver* %7, %struct.isa_driver** %4, align 8
  %8 = load %struct.isa_driver*, %struct.isa_driver** %4, align 8
  %9 = icmp ne %struct.isa_driver* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.isa_driver*, %struct.isa_driver** %4, align 8
  %12 = getelementptr inbounds %struct.isa_driver, %struct.isa_driver* %11, i32 0, i32 0
  %13 = load i32 (%struct.device.0*, i32)*, i32 (%struct.device.0*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.device.0*, i32)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load %struct.isa_driver*, %struct.isa_driver** %4, align 8
  %17 = getelementptr inbounds %struct.isa_driver, %struct.isa_driver* %16, i32 0, i32 0
  %18 = load i32 (%struct.device.0*, i32)*, i32 (%struct.device.0*, i32)** %17, align 8
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = bitcast %struct.device* %19 to %struct.device.0*
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call %struct.TYPE_2__* @to_isa_dev(%struct.device* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 %18(%struct.device.0* %20, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.TYPE_2__* @to_isa_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
