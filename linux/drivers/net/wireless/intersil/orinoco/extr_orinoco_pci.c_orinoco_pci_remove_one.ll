; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_pci.c_orinoco_pci_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_pci.c_orinoco_pci_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.orinoco_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @orinoco_pci_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orinoco_pci_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.orinoco_private*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.orinoco_private* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.orinoco_private* %5, %struct.orinoco_private** %3, align 8
  %6 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %7 = call i32 @orinoco_if_del(%struct.orinoco_private* %6)
  %8 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %9 = call i32 @priv_to_wiphy(%struct.orinoco_private* %8)
  %10 = call i32 @wiphy_unregister(i32 %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.orinoco_private* %14)
  %16 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %17 = call i32 @free_orinocodev(%struct.orinoco_private* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %20 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pci_iounmap(%struct.pci_dev* %18, i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = call i32 @pci_release_regions(%struct.pci_dev* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = call i32 @pci_disable_device(%struct.pci_dev* %26)
  ret void
}

declare dso_local %struct.orinoco_private* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @orinoco_if_del(%struct.orinoco_private*) #1

declare dso_local i32 @wiphy_unregister(i32) #1

declare dso_local i32 @priv_to_wiphy(%struct.orinoco_private*) #1

declare dso_local i32 @free_irq(i32, %struct.orinoco_private*) #1

declare dso_local i32 @free_orinocodev(%struct.orinoco_private*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
