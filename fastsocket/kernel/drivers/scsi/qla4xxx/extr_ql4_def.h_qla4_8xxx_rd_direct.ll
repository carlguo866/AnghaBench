; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_def.h_qla4_8xxx_rd_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_def.h_qla4_8xxx_rd_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.scsi_qla_host*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i64)* @qla4_8xxx_rd_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4_8xxx_rd_direct(%struct.scsi_qla_host* %0, i64 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.scsi_qla_host*, i32)*, i32 (%struct.scsi_qla_host*, i32)** %8, align 8
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 %9(%struct.scsi_qla_host* %10, i32 %16)
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
