; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_msi.c_arch_teardown_msi_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_msi.c_arch_teardown_msi_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_controller = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.pci_dev*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_teardown_msi_irqs(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_controller*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.pci_controller* @pci_bus_to_host(i32 %6)
  store %struct.pci_controller* %7, %struct.pci_controller** %3, align 8
  %8 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %9 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %10, align 8
  %12 = icmp ne i32 (%struct.pci_dev*)* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %15 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %16, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = call i32 %17(%struct.pci_dev* %18)
  br label %20

20:                                               ; preds = %13, %1
  ret void
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
