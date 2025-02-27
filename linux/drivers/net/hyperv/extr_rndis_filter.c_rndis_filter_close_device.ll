; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_close_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_close_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_device = type { i64, i32 }

@RNDIS_DEV_DATAINITIALIZED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@RNDIS_DEV_INITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rndis_device*)* @rndis_filter_close_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_filter_close_device(%struct.rndis_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rndis_device*, align 8
  %4 = alloca i32, align 4
  store %struct.rndis_device* %0, %struct.rndis_device** %3, align 8
  %5 = load %struct.rndis_device*, %struct.rndis_device** %3, align 8
  %6 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RNDIS_DEV_DATAINITIALIZED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.rndis_device*, %struct.rndis_device** %3, align 8
  %13 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %12, i32 0, i32 1
  %14 = call i32 @cancel_work_sync(i32* %13)
  %15 = load %struct.rndis_device*, %struct.rndis_device** %3, align 8
  %16 = call i32 @rndis_filter_set_packet_filter(%struct.rndis_device* %15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %11
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* @RNDIS_DEV_INITIALIZED, align 8
  %27 = load %struct.rndis_device*, %struct.rndis_device** %3, align 8
  %28 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @rndis_filter_set_packet_filter(%struct.rndis_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
