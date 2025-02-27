; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_sas_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_sas_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.ata_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sas_slave_configure(%struct.scsi_device* %0, %struct.ata_port* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.ata_port*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.ata_port* %1, %struct.ata_port** %4, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = call i32 @ata_scsi_sdev_config(%struct.scsi_device* %5)
  %7 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ata_scsi_dev_config(%struct.scsi_device* %7, i32 %11)
  ret i32 0
}

declare dso_local i32 @ata_scsi_sdev_config(%struct.scsi_device*) #1

declare dso_local i32 @ata_scsi_dev_config(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
