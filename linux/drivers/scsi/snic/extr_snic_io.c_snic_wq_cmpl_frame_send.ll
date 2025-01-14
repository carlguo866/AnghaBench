; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_wq_cmpl_frame_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_wq_cmpl_frame_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq = type { i32 }
%struct.cq_desc = type { i32 }
%struct.vnic_wq_buf = type { i32* }
%struct.snic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@snic_log_level = common dso_local global i32 0, align 4
@SNIC_DESC_LOGGING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Ack received for snic_host_req %p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_wq*, %struct.cq_desc*, %struct.vnic_wq_buf*, i8*)* @snic_wq_cmpl_frame_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snic_wq_cmpl_frame_send(%struct.vnic_wq* %0, %struct.cq_desc* %1, %struct.vnic_wq_buf* %2, i8* %3) #0 {
  %5 = alloca %struct.vnic_wq*, align 8
  %6 = alloca %struct.cq_desc*, align 8
  %7 = alloca %struct.vnic_wq_buf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.snic*, align 8
  store %struct.vnic_wq* %0, %struct.vnic_wq** %5, align 8
  store %struct.cq_desc* %1, %struct.cq_desc** %6, align 8
  store %struct.vnic_wq_buf* %2, %struct.vnic_wq_buf** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %11 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snic* @svnic_dev_priv(i32 %12)
  store %struct.snic* %13, %struct.snic** %9, align 8
  %14 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %7, align 8
  %15 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @SNIC_BUG_ON(i32 %18)
  %20 = load i32, i32* @snic_log_level, align 4
  %21 = load i32, i32* @SNIC_DESC_LOGGING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.snic*, %struct.snic** %9, align 8
  %26 = getelementptr inbounds %struct.snic, %struct.snic* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %7, align 8
  %29 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @SNIC_HOST_INFO(%struct.TYPE_2__* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %30)
  br label %32

32:                                               ; preds = %24, %4
  %33 = load %struct.snic*, %struct.snic** %9, align 8
  %34 = getelementptr inbounds %struct.snic, %struct.snic* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %7, align 8
  %39 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = ptrtoint i32* %40 to i64
  %42 = sub i64 %41, 4
  %43 = call i32 @SNIC_TRC(i32 %37, i32 0, i32 0, i64 %42, i32 0, i32 0, i32 0)
  %44 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %7, align 8
  %45 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  ret void
}

declare dso_local %struct.snic* @svnic_dev_priv(i32) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @SNIC_HOST_INFO(%struct.TYPE_2__*, i8*, i32*) #1

declare dso_local i32 @SNIC_TRC(i32, i32, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
