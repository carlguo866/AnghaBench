; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_task_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_task_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }

@TASK_TAG_SIMPLE = common dso_local global i32 0, align 4
@TASK_TAG_QUEUE_HEAD = common dso_local global i32 0, align 4
@TASK_TAG_ORDERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @pmcraid_task_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_task_attributes(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca [2 x i8], align 1
  %4 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %6 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %7 = call i64 @scsi_populate_tag_msg(%struct.scsi_cmnd* %5, i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %19 [
    i32 128, label %13
    i32 130, label %15
    i32 129, label %17
  ]

13:                                               ; preds = %9
  %14 = load i32, i32* @TASK_TAG_SIMPLE, align 4
  store i32 %14, i32* %4, align 4
  br label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @TASK_TAG_QUEUE_HEAD, align 4
  store i32 %16, i32* %4, align 4
  br label %19

17:                                               ; preds = %9
  %18 = load i32, i32* @TASK_TAG_ORDERED, align 4
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %9, %17, %15, %13
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i64 @scsi_populate_tag_msg(%struct.scsi_cmnd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
