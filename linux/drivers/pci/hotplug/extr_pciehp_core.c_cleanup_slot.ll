; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_core.c_cleanup_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_core.c_cleanup_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.hotplug_slot }
%struct.hotplug_slot = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*)* @cleanup_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_slot(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca %struct.hotplug_slot*, align 8
  store %struct.controller* %0, %struct.controller** %2, align 8
  %4 = load %struct.controller*, %struct.controller** %2, align 8
  %5 = getelementptr inbounds %struct.controller, %struct.controller* %4, i32 0, i32 0
  store %struct.hotplug_slot* %5, %struct.hotplug_slot** %3, align 8
  %6 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %7 = call i32 @pci_hp_destroy(%struct.hotplug_slot* %6)
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %9 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @kfree(i32 %10)
  ret void
}

declare dso_local i32 @pci_hp_destroy(%struct.hotplug_slot*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
