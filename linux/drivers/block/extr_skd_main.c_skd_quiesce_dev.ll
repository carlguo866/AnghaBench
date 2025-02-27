; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_quiesce_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_quiesce_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"stopping queue\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"state [%d] not implemented\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skd_device*)* @skd_quiesce_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_quiesce_dev(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca i32, align 4
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %5 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %18 [
    i32 137, label %7
    i32 136, label %7
    i32 135, label %17
    i32 129, label %17
    i32 128, label %17
    i32 133, label %17
    i32 134, label %17
    i32 130, label %17
    i32 132, label %17
    i32 131, label %17
  ]

7:                                                ; preds = %1, %1
  %8 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %9 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %14 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @blk_mq_stop_hw_queues(i32 %15)
  br label %29

17:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  br label %18

18:                                               ; preds = %1, %17
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  %21 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %22 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %26 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %18, %7
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @blk_mq_stop_hw_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
