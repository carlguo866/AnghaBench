; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_scc.c_scc_freeze.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_scc.c_scc_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__*, i32, i32, %struct.ata_ioports }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)* }
%struct.ata_ioports = type { i32 }

@ATA_NIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @scc_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_freeze(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.ata_ioports*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %4 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %5 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %4, i32 0, i32 3
  store %struct.ata_ioports* %5, %struct.ata_ioports** %3, align 8
  %6 = load i32, i32* @ATA_NIEN, align 4
  %7 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %17 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @out_be32(i32 %18, i32 %21)
  %23 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %24 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %26, align 8
  %28 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %29 = call i32 %27(%struct.ata_port* %28)
  %30 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %31 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %33, align 8
  %35 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %36 = call i32 %34(%struct.ata_port* %35)
  ret void
}

declare dso_local i32 @out_be32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
