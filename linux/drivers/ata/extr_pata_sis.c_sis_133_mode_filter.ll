; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sis.c_sis_133_mode_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sis.c_sis_133_mode_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }

@ATA_SHIFT_UDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ata_device*, i64)* @sis_133_mode_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sis_133_mode_filter(%struct.ata_device* %0, i64 %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %10 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  store %struct.ata_port* %13, %struct.ata_port** %5, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %6, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %21 = call i32 @sis_port_base(%struct.ata_device* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @pci_read_config_dword(%struct.pci_dev* %22, i32 %23, i32* %8)
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ATA_SHIFT_UDMA, align 4
  %30 = shl i32 192, %29
  %31 = xor i32 %30, -1
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %28, %2
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @sis_port_base(%struct.ata_device*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
