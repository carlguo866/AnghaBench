; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-netcell.c_ata_netcell_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-netcell.c_ata_netcell_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32 }

@ATA_NETCELL_SR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Netcell SyncRAID SR3000/5000 RAID Controller\00", align 1
@ata_netcell_chipinit = common dso_local global i32 0, align 4
@BUS_PROBE_LOW_PRIORITY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_netcell_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_netcell_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ata_pci_controller* @device_get_softc(i32 %5)
  store %struct.ata_pci_controller* %6, %struct.ata_pci_controller** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @pci_get_devid(i32 %7)
  %9 = load i64, i64* @ATA_NETCELL_SR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_set_desc(i32 %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ata_netcell_chipinit, align 4
  %15 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %16 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @BUS_PROBE_LOW_PRIORITY, align 4
  store i32 %17, i32* %2, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
