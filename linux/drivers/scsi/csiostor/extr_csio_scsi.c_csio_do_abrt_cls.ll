; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_do_abrt_cls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_do_abrt_cls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { %struct.csio_scsi_qset** }
%struct.csio_scsi_qset = type { i32 }
%struct.csio_ioreq = type { i32, i32, %struct.csio_lnode* }
%struct.csio_lnode = type { i64 }

@CSIO_SCSI_ABRT_TMO_MS = common dso_local global i32 0, align 4
@SCSI_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, %struct.csio_ioreq*, i32)* @csio_do_abrt_cls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_do_abrt_cls(%struct.csio_hw* %0, %struct.csio_ioreq* %1, i32 %2) #0 {
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca %struct.csio_ioreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.csio_lnode*, align 8
  %10 = alloca %struct.csio_scsi_qset*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store %struct.csio_ioreq* %1, %struct.csio_ioreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i32 (...) @smp_processor_id()
  store i32 %11, i32* %8, align 4
  %12 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %13 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %12, i32 0, i32 2
  %14 = load %struct.csio_lnode*, %struct.csio_lnode** %13, align 8
  store %struct.csio_lnode* %14, %struct.csio_lnode** %9, align 8
  %15 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %16 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %15, i32 0, i32 0
  %17 = load %struct.csio_scsi_qset**, %struct.csio_scsi_qset*** %16, align 8
  %18 = load %struct.csio_lnode*, %struct.csio_lnode** %9, align 8
  %19 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.csio_scsi_qset*, %struct.csio_scsi_qset** %17, i64 %20
  %22 = load %struct.csio_scsi_qset*, %struct.csio_scsi_qset** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.csio_scsi_qset, %struct.csio_scsi_qset* %22, i64 %24
  store %struct.csio_scsi_qset* %25, %struct.csio_scsi_qset** %10, align 8
  %26 = load i32, i32* @CSIO_SCSI_ABRT_TMO_MS, align 4
  %27 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %28 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.csio_scsi_qset*, %struct.csio_scsi_qset** %10, align 8
  %30 = getelementptr inbounds %struct.csio_scsi_qset, %struct.csio_scsi_qset* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %33 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SCSI_ABORT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %39 = call i32 @csio_scsi_abort(%struct.csio_ioreq* %38)
  store i32 %39, i32* %7, align 4
  br label %43

40:                                               ; preds = %3
  %41 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %42 = call i32 @csio_scsi_close(%struct.csio_ioreq* %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @csio_scsi_abort(%struct.csio_ioreq*) #1

declare dso_local i32 @csio_scsi_close(%struct.csio_ioreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
