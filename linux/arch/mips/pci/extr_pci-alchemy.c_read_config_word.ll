; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-alchemy.c_read_config_word.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-alchemy.c_read_config_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32*)* @read_config_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_config_word(%struct.pci_bus* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @PCI_ACCESS_READ, align 4
  %12 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @config_access(i32 %11, %struct.pci_bus* %12, i32 %13, i32 %14, i32* %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = ashr i32 %20, 16
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 65535
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %10, align 4
  ret i32 %26
}

declare dso_local i32 @config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
