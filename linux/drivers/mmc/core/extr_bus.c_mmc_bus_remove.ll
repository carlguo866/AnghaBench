; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_bus.c_mmc_bus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_bus.c_mmc_bus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mmc_driver = type { i32 (%struct.mmc_card*)* }
%struct.mmc_card = type opaque
%struct.mmc_card.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mmc_bus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_bus_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.mmc_driver*, align 8
  %4 = alloca %struct.mmc_card.0*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mmc_driver* @to_mmc_driver(i32 %7)
  store %struct.mmc_driver* %8, %struct.mmc_driver** %3, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.mmc_card.0* @mmc_dev_to_card(%struct.device* %9)
  store %struct.mmc_card.0* %10, %struct.mmc_card.0** %4, align 8
  %11 = load %struct.mmc_driver*, %struct.mmc_driver** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_driver, %struct.mmc_driver* %11, i32 0, i32 0
  %13 = load i32 (%struct.mmc_card*)*, i32 (%struct.mmc_card*)** %12, align 8
  %14 = load %struct.mmc_card.0*, %struct.mmc_card.0** %4, align 8
  %15 = bitcast %struct.mmc_card.0* %14 to %struct.mmc_card*
  %16 = call i32 %13(%struct.mmc_card* %15)
  ret i32 0
}

declare dso_local %struct.mmc_driver* @to_mmc_driver(i32) #1

declare dso_local %struct.mmc_card.0* @mmc_dev_to_card(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
