; ModuleID = '/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_bus_add_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_bus_add_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_bus = type { i32 }

@mcb_bus_type = common dso_local global i32 0, align 4
@__mcb_bus_add_devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mcb_bus_add_devices(%struct.mcb_bus* %0) #0 {
  %2 = alloca %struct.mcb_bus*, align 8
  store %struct.mcb_bus* %0, %struct.mcb_bus** %2, align 8
  %3 = load i32, i32* @__mcb_bus_add_devices, align 4
  %4 = call i32 @bus_for_each_dev(i32* @mcb_bus_type, i32* null, i32* null, i32 %3)
  ret void
}

declare dso_local i32 @bus_for_each_dev(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
