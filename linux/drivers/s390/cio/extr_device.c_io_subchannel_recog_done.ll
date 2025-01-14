; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_io_subchannel_recog_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_io_subchannel_recog_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@css_init_done = common dso_local global i64 0, align 8
@CDEV_TODO_UNREG = common dso_local global i32 0, align 4
@ccw_device_init_count = common dso_local global i32 0, align 4
@ccw_device_init_wq = common dso_local global i32 0, align 4
@CDEV_TODO_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @io_subchannel_recog_done(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %3 = load i64, i64* @css_init_done, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %35 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %31
  ]

17:                                               ; preds = %11, %11
  %18 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %19 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %24 = load i32, i32* @CDEV_TODO_UNREG, align 4
  %25 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %23, i32 %24)
  %26 = call i32 @atomic_dec_and_test(i32* @ccw_device_init_count)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = call i32 @wake_up(i32* @ccw_device_init_wq)
  br label %30

30:                                               ; preds = %28, %17
  br label %35

31:                                               ; preds = %11
  %32 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %33 = load i32, i32* @CDEV_TODO_REGISTER, align 4
  %34 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %32, i32 %33)
  br label %35

35:                                               ; preds = %5, %11, %31, %30
  ret void
}

declare dso_local i32 @ccw_device_sched_todo(%struct.ccw_device*, i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
