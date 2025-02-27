; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_set_pcie_thunderbolt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_set_pcie_thunderbolt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }

@PCI_EXT_CAP_ID_VNDR = common dso_local global i32 0, align 4
@PCI_VNDR_HEADER = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@PCI_VSEC_ID_INTEL_TBT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @set_pcie_thunderbolt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pcie_thunderbolt(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PCI_EXT_CAP_ID_VNDR, align 4
  %9 = call i32 @pci_find_next_ext_capability(%struct.pci_dev* %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %5
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @PCI_VNDR_HEADER, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @pci_read_config_dword(%struct.pci_dev* %12, i64 %16, i32* %4)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @PCI_VNDR_HEADER_ID(i32 %24)
  %26 = load i64, i64* @PCI_VSEC_ID_INTEL_TBT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  store i32 1, i32* %30, align 8
  br label %32

31:                                               ; preds = %23, %11
  br label %5

32:                                               ; preds = %28, %5
  ret void
}

declare dso_local i32 @pci_find_next_ext_capability(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i64 @PCI_VNDR_HEADER_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
