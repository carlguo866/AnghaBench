; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_aec62xx.c_init_chipset_aec62xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_aec62xx.c_init_chipset_aec62xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }

@PCI_DEVICE_ID_ARTOP_ATP865 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_ARTOP_ATP865R = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @init_chipset_aec62xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_chipset_aec62xx(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PCI_DEVICE_ID_ARTOP_ATP865, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PCI_DEVICE_ID_ARTOP_ATP865R, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %10, %1
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = call i32 @pci_read_config_byte(%struct.pci_dev* %17, i32 73, i32* %3)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, -49
  %22 = call i32 @pci_write_config_byte(%struct.pci_dev* %19, i32 73, i32 %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i32 @pci_read_config_byte(%struct.pci_dev* %23, i32 74, i32* %4)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, -2
  %28 = call i32 @pci_write_config_byte(%struct.pci_dev* %25, i32 74, i32 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = call i32 @pci_read_config_byte(%struct.pci_dev* %29, i32 74, i32* %4)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, 128
  %34 = call i32 @pci_write_config_byte(%struct.pci_dev* %31, i32 74, i32 %33)
  br label %35

35:                                               ; preds = %16, %10
  ret i32 0
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
