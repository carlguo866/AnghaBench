; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_conn_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_conn_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iscsi_cls_conn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }

@.str = private unnamed_addr constant [16 x i8] c"Releasing conn\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @iscsi_conn_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_conn_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.iscsi_cls_conn* @iscsi_dev_to_conn(%struct.device* %5)
  store %struct.iscsi_cls_conn* %6, %struct.iscsi_cls_conn** %3, align 8
  %7 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %12 = call i32 @ISCSI_DBG_TRANS_CONN(%struct.iscsi_cls_conn* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %14 = call i32 @kfree(%struct.iscsi_cls_conn* %13)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @put_device(%struct.device* %15)
  ret void
}

declare dso_local %struct.iscsi_cls_conn* @iscsi_dev_to_conn(%struct.device*) #1

declare dso_local i32 @ISCSI_DBG_TRANS_CONN(%struct.iscsi_cls_conn*, i8*) #1

declare dso_local i32 @kfree(%struct.iscsi_cls_conn*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
