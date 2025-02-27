; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_sw_tcp_host = type { %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i64 }

@BDI_CAP_STABLE_WRITES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @iscsi_sw_tcp_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_sw_tcp_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.iscsi_sw_tcp_host*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.iscsi_sw_tcp_host* @iscsi_host_priv(i32 %8)
  store %struct.iscsi_sw_tcp_host* %9, %struct.iscsi_sw_tcp_host** %3, align 8
  %10 = load %struct.iscsi_sw_tcp_host*, %struct.iscsi_sw_tcp_host** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_sw_tcp_host, %struct.iscsi_sw_tcp_host* %10, i32 0, i32 0
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  store %struct.iscsi_session* %12, %struct.iscsi_session** %4, align 8
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %13, i32 0, i32 0
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  store %struct.iscsi_conn* %15, %struct.iscsi_conn** %5, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load i32, i32* @BDI_CAP_STABLE_WRITES, align 4
  %22 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %21
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %20, %1
  %31 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 @blk_queue_dma_alignment(%struct.TYPE_4__* %33, i32 0)
  ret i32 0
}

declare dso_local %struct.iscsi_sw_tcp_host* @iscsi_host_priv(i32) #1

declare dso_local i32 @blk_queue_dma_alignment(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
