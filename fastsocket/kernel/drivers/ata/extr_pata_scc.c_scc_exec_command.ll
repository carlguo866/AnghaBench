; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_scc.c_scc_exec_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_scc.c_scc_exec_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ata_taskfile = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"ata%u: cmd 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @scc_exec_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_exec_command(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
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
  %11 = call i32 @DPRINTK(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %17 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @out_be32(i32 %15, i32 %18)
  %20 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %21 = call i32 @ata_sff_pause(%struct.ata_port* %20)
  ret void
}

declare dso_local i32 @DPRINTK(i8*, i32, i32) #1

declare dso_local i32 @out_be32(i32, i32) #1

declare dso_local i32 @ata_sff_pause(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
