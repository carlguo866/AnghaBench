; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_platform_pci_power_manageable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_platform_pci_power_manageable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pci_dev*)* }
%struct.pci_dev = type { i32 }

@pci_platform_pm = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @platform_pci_power_manageable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_pci_power_manageable(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pci_platform_pm, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pci_platform_pm, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %7, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call i32 %8(%struct.pci_dev* %9)
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %5
  %13 = phi i32 [ %10, %5 ], [ 0, %11 ]
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
