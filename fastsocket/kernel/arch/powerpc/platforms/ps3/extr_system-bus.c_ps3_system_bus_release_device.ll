; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_system-bus.c_ps3_system_bus_release_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_system-bus.c_ps3_system_bus_release_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ps3_system_bus_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @ps3_system_bus_release_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3_system_bus_release_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ps3_system_bus_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.ps3_system_bus_device* @ps3_dev_to_system_bus_dev(%struct.device* %4)
  store %struct.ps3_system_bus_device* %5, %struct.ps3_system_bus_device** %3, align 8
  %6 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %7 = call i32 @kfree(%struct.ps3_system_bus_device* %6)
  ret void
}

declare dso_local %struct.ps3_system_bus_device* @ps3_dev_to_system_bus_dev(%struct.device*) #1

declare dso_local i32 @kfree(%struct.ps3_system_bus_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
