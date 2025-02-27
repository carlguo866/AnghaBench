; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sl82c105.c_sl82c105_bridge_revision.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sl82c105.c_sl82c105_bridge_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, i32, i32, i32, i32 }

@PCI_VENDOR_ID_WINBOND = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_WINBOND_83C553 = common dso_local global i64 0, align 8
@PCI_CLASS_BRIDGE_ISA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @sl82c105_bridge_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sl82c105_bridge_revision(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @PCI_SLOT(i32 %10)
  %12 = call i32 @PCI_DEVFN(i32 %11, i32 0)
  %13 = call %struct.pci_dev* @pci_get_slot(i32 %7, i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = icmp ne %struct.pci_dev* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCI_VENDOR_ID_WINBOND, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %36, label %23

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI_DEVICE_ID_WINBOND_83C553, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 8
  %34 = load i32, i32* @PCI_CLASS_BRIDGE_ISA, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %23, %17
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @pci_dev_put(%struct.pci_dev* %37)
  store i32 -1, i32* %2, align 4
  br label %45

39:                                               ; preds = %29
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i32 @pci_dev_put(%struct.pci_dev* %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %36, %16
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
