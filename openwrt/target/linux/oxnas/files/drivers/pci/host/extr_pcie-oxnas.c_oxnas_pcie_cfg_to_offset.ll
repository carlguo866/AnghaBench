; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_cfg_to_offset.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_cfg_to_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_sys_data = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_sys_data*, i8, i32, i32)* @oxnas_pcie_cfg_to_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_pcie_cfg_to_offset(%struct.pci_sys_data* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_sys_data*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.pci_sys_data* %0, %struct.pci_sys_data** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @PCI_FUNC(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @PCI_SLOT(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = load %struct.pci_sys_data*, %struct.pci_sys_data** %5, align 8
  %19 = getelementptr inbounds %struct.pci_sys_data, %struct.pci_sys_data* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = sub nsw i32 %17, %21
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %11, align 1
  %24 = load i8, i8* %11, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 20
  %27 = load i32, i32* %10, align 4
  %28 = shl i32 %27, 15
  %29 = or i32 %26, %28
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 %30, 12
  %32 = or i32 %29, %31
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, -4
  %35 = or i32 %32, %34
  ret i32 %35
}

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
