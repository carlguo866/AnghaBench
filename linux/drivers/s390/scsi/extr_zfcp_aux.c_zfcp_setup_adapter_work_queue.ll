; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_setup_adapter_work_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_setup_adapter_work_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"zfcp_q_%s\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_adapter*)* @zfcp_setup_adapter_work_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_setup_adapter_work_queue(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  %7 = load i32, i32* @TASK_COMM_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = trunc i64 %8 to i32
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i8* @dev_name(i32* %15)
  %17 = call i32 @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %19 = call i64 @alloc_ordered_workqueue(i8* %10, i32 %18)
  %20 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dev_name(i32*) #2

declare dso_local i64 @alloc_ordered_workqueue(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
