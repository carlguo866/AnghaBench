; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_cmd64x.c_init_chipset_cmd64x.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_cmd64x.c_init_chipset_cmd64x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@MRDMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @init_chipset_cmd64x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_chipset_cmd64x(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %6 = call i32 @pci_write_config_byte(%struct.pci_dev* %4, i32 %5, i32 64)
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = load i32, i32* @MRDMODE, align 4
  %9 = call i32 @pci_read_config_byte(%struct.pci_dev* %7, i32 %8, i32* %3)
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, -49
  store i32 %11, i32* %3, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load i32, i32* @MRDMODE, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, 2
  %16 = call i32 @pci_write_config_byte(%struct.pci_dev* %12, i32 %13, i32 %15)
  ret i32 0
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
