; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.h_csio_scsi_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.h_csio_scsi_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.list_head = type { i32 }

@CSIO_SCSIE_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*, %struct.list_head*)* @csio_scsi_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsi_completed(%struct.csio_ioreq* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.csio_ioreq*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %5 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %6 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %5, i32 0, i32 0
  %7 = load i32, i32* @CSIO_SCSIE_COMPLETED, align 4
  %8 = call i32 @csio_post_event(%struct.TYPE_2__* %6, i32 %7)
  %9 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %10 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i64 @csio_list_deleted(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %16 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.list_head*, %struct.list_head** %4, align 8
  %19 = call i32 @list_add_tail(i32* %17, %struct.list_head* %18)
  br label %20

20:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @csio_post_event(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @csio_list_deleted(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
