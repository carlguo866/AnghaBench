; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-titan-ht.c_titan_ht_config_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-titan-ht.c_titan_ht_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @titan_ht_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @titan_ht_config_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @titan_ht_config_read_dword(%struct.pci_bus* %12, i32 %13, i32 %14, i32* %11)
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 3
  %18 = shl i32 %17, 3
  %19 = load i32, i32* %11, align 4
  %20 = ashr i32 %19, %18
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub nsw i32 4, %21
  %23 = shl i32 %22, 8
  %24 = lshr i32 -1, %23
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %27
}

declare dso_local i32 @titan_ht_config_read_dword(%struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
