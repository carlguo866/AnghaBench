; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_reset_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_reset_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }

@CB710_MMC_STATUS0_PORT = common dso_local global i32 0, align 4
@CB710_MMC_STATUS1_PORT = common dso_local global i32 0, align 4
@CB710_MMC_STATUS2_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cb710_slot*)* @cb710_mmc_reset_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb710_mmc_reset_events(%struct.cb710_slot* %0) #0 {
  %2 = alloca %struct.cb710_slot*, align 8
  store %struct.cb710_slot* %0, %struct.cb710_slot** %2, align 8
  %3 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %4 = load i32, i32* @CB710_MMC_STATUS0_PORT, align 4
  %5 = call i32 @cb710_write_port_8(%struct.cb710_slot* %3, i32 %4, i32 255)
  %6 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %7 = load i32, i32* @CB710_MMC_STATUS1_PORT, align 4
  %8 = call i32 @cb710_write_port_8(%struct.cb710_slot* %6, i32 %7, i32 255)
  %9 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %10 = load i32, i32* @CB710_MMC_STATUS2_PORT, align 4
  %11 = call i32 @cb710_write_port_8(%struct.cb710_slot* %9, i32 %10, i32 255)
  ret void
}

declare dso_local i32 @cb710_write_port_8(%struct.cb710_slot*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
