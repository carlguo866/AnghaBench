; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_exec_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_exec_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ata_taskfile = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @pata_s3c_exec_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_s3c_exec_command(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %5 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %6 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %9 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ata_outb(i32 %7, i32 %10, i32 %14)
  %16 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %17 = call i32 @ata_sff_pause(%struct.ata_port* %16)
  ret void
}

declare dso_local i32 @ata_outb(i32, i32, i32) #1

declare dso_local i32 @ata_sff_pause(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
