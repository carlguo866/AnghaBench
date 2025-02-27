; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_pme.c_pcie_pme_disable_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_pme.c_pcie_pme_disable_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pcie_pme_service_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.pcie_pme_service_data*)* @pcie_pme_disable_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcie_pme_disable_interrupt(%struct.pci_dev* %0, %struct.pcie_pme_service_data* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pcie_pme_service_data*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pcie_pme_service_data* %1, %struct.pcie_pme_service_data** %4, align 8
  %5 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %4, align 8
  %6 = getelementptr inbounds %struct.pcie_pme_service_data, %struct.pcie_pme_service_data* %5, i32 0, i32 1
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call i32 @pcie_pme_interrupt_enable(%struct.pci_dev* %8, i32 0)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i32 @pcie_clear_root_pme_status(%struct.pci_dev* %10)
  %12 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %4, align 8
  %13 = getelementptr inbounds %struct.pcie_pme_service_data, %struct.pcie_pme_service_data* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %4, align 8
  %15 = getelementptr inbounds %struct.pcie_pme_service_data, %struct.pcie_pme_service_data* %14, i32 0, i32 1
  %16 = call i32 @spin_unlock_irq(i32* %15)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @pcie_pme_interrupt_enable(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcie_clear_root_pme_status(%struct.pci_dev*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
