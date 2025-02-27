; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pmcmsp.c_msp_pcibios_read_config_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pmcmsp.c_msp_pcibios_read_config_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32*)* @msp_pcibios_read_config_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_pcibios_read_config_byte(%struct.pci_bus* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @PCI_ACCESS_READ, align 4
  %12 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @msp_pcibios_config_access(i32 %11, %struct.pci_bus* %12, i32 %13, i32 %14, i32* %10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %5, align 4
  br label %28

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 3
  %23 = shl i32 %22, 3
  %24 = ashr i32 %20, %23
  %25 = and i32 %24, 255
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %19, %17
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i64 @msp_pcibios_config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
