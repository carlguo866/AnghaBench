; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_iocb.c_qla4xxx_get_req_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_iocb.c_qla4xxx_get_req_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.queue_entry* }
%struct.queue_entry = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.queue_entry**)* @qla4xxx_get_req_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_get_req_pkt(%struct.scsi_qla_host* %0, %struct.queue_entry** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.queue_entry**, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.queue_entry** %1, %struct.queue_entry*** %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @qla4xxx_space_in_req_ring(%struct.scsi_qla_host* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 1
  %14 = load %struct.queue_entry*, %struct.queue_entry** %13, align 8
  %15 = load %struct.queue_entry**, %struct.queue_entry*** %5, align 8
  store %struct.queue_entry* %14, %struct.queue_entry** %15, align 8
  %16 = load %struct.queue_entry**, %struct.queue_entry*** %5, align 8
  %17 = load %struct.queue_entry*, %struct.queue_entry** %16, align 8
  %18 = call i32 @memset(%struct.queue_entry* %17, i32 0, i32 4)
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %20 = call i32 @qla4xxx_advance_req_ring_ptr(%struct.scsi_qla_host* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @QLA_ERROR, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @qla4xxx_space_in_req_ring(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @memset(%struct.queue_entry*, i32, i32) #1

declare dso_local i32 @qla4xxx_advance_req_ring_ptr(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
