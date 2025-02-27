; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_complete_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_complete_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i32, i32, i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_task*, %struct.iscsi_task*, i32 }

@.str = private unnamed_addr constant [39 x i8] c"complete task itt 0x%x state %d sc %p\0A\00", align 1
@ISCSI_TASK_COMPLETED = common dso_local global i32 0, align 4
@ISCSI_TASK_ABRT_TMF = common dso_local global i32 0, align 4
@ISCSI_TASK_ABRT_SESS_RECOV = common dso_local global i32 0, align 4
@ISCSI_TASK_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_task*, i32)* @iscsi_complete_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_complete_task(%struct.iscsi_task* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %6, i32 0, i32 4
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %5, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %13 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %16 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %19 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ISCSI_DBG_SESSION(i32 %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20)
  %22 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %23 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ISCSI_TASK_COMPLETED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %2
  %28 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %29 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ISCSI_TASK_ABRT_TMF, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %35 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ISCSI_TASK_ABRT_SESS_RECOV, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27, %2
  br label %80

40:                                               ; preds = %33
  %41 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %42 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ISCSI_TASK_FREE, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON_ONCE(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %50 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %52 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %51, i32 0, i32 1
  %53 = call i32 @list_empty(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %40
  %56 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %57 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %56, i32 0, i32 1
  %58 = call i32 @list_del_init(i32* %57)
  br label %59

59:                                               ; preds = %55, %40
  %60 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %61 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %60, i32 0, i32 1
  %62 = load %struct.iscsi_task*, %struct.iscsi_task** %61, align 8
  %63 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %64 = icmp eq %struct.iscsi_task* %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %67 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %66, i32 0, i32 1
  store %struct.iscsi_task* null, %struct.iscsi_task** %67, align 8
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %70 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %69, i32 0, i32 0
  %71 = load %struct.iscsi_task*, %struct.iscsi_task** %70, align 8
  %72 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %73 = icmp eq %struct.iscsi_task* %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %76 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %75, i32 0, i32 0
  store %struct.iscsi_task* null, %struct.iscsi_task** %76, align 8
  br label %77

77:                                               ; preds = %74, %68
  %78 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %79 = call i32 @__iscsi_put_task(%struct.iscsi_task* %78)
  br label %80

80:                                               ; preds = %77, %39
  ret void
}

declare dso_local i32 @ISCSI_DBG_SESSION(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @__iscsi_put_task(%struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
