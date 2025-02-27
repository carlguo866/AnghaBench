; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_amd.c_amd33_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_amd.c_amd33_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32 }
%struct.ata_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @amd33_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd33_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %5 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %6 = call i32 @amd_fifo_setup(%struct.ata_port* %5)
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %10 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @timing_setup(%struct.ata_port* %7, %struct.ata_device* %8, i32 64, i32 %11, i32 1)
  ret void
}

declare dso_local i32 @amd_fifo_setup(%struct.ata_port*) #1

declare dso_local i32 @timing_setup(%struct.ata_port*, %struct.ata_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
