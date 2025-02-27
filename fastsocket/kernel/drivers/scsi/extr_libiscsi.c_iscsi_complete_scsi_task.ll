; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_complete_scsi_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_complete_scsi_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"[itt 0x%x]\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@ISCSI_TASK_COMPLETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_complete_scsi_task(%struct.iscsi_task* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %8, i32 0, i32 1
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  store %struct.iscsi_conn* %10, %struct.iscsi_conn** %7, align 8
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ISCSI_DBG_SESSION(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @jiffies, align 4
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @__iscsi_update_cmdsn(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %28 = load i32, i32* @ISCSI_TASK_COMPLETED, align 4
  %29 = call i32 @iscsi_complete_task(%struct.iscsi_task* %27, i32 %28)
  ret void
}

declare dso_local i32 @ISCSI_DBG_SESSION(i32, i8*, i32) #1

declare dso_local i32 @__iscsi_update_cmdsn(i32, i32, i32) #1

declare dso_local i32 @iscsi_complete_task(%struct.iscsi_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
