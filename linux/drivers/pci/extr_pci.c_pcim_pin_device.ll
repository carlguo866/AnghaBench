; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pcim_pin_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pcim_pin_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_devres = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcim_pin_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_devres*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.pci_devres* @find_pci_dr(%struct.pci_dev* %4)
  store %struct.pci_devres* %5, %struct.pci_devres** %3, align 8
  %6 = load %struct.pci_devres*, %struct.pci_devres** %3, align 8
  %7 = icmp ne %struct.pci_devres* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.pci_devres*, %struct.pci_devres** %3, align 8
  %10 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ true, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.pci_devres*, %struct.pci_devres** %3, align 8
  %19 = icmp ne %struct.pci_devres* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.pci_devres*, %struct.pci_devres** %3, align 8
  %22 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %14
  ret void
}

declare dso_local %struct.pci_devres* @find_pci_dr(%struct.pci_dev*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
