; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.h_cb710_mmc_to_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.h_cb710_mmc_to_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }
%struct.mmc_host = type { i32 }
%struct.platform_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cb710_slot* (%struct.mmc_host*)* @cb710_mmc_to_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cb710_slot* @cb710_mmc_to_slot(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.platform_device*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = call i32 @mmc_dev(%struct.mmc_host* %4)
  %6 = call %struct.platform_device* @to_platform_device(i32 %5)
  store %struct.platform_device* %6, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.cb710_slot* @cb710_pdev_to_slot(%struct.platform_device* %7)
  ret %struct.cb710_slot* %8
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local %struct.cb710_slot* @cb710_pdev_to_slot(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
