; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_get_rndis_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_get_rndis_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_device = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@rndis_set_multicast = common dso_local global i32 0, align 4
@RNDIS_DEV_UNINITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rndis_device* ()* @get_rndis_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rndis_device* @get_rndis_device() #0 {
  %1 = alloca %struct.rndis_device*, align 8
  %2 = alloca %struct.rndis_device*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.rndis_device* @kzalloc(i32 16, i32 %3)
  store %struct.rndis_device* %4, %struct.rndis_device** %2, align 8
  %5 = load %struct.rndis_device*, %struct.rndis_device** %2, align 8
  %6 = icmp ne %struct.rndis_device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.rndis_device* null, %struct.rndis_device** %1, align 8
  br label %23

8:                                                ; preds = %0
  %9 = load %struct.rndis_device*, %struct.rndis_device** %2, align 8
  %10 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %9, i32 0, i32 3
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.rndis_device*, %struct.rndis_device** %2, align 8
  %13 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %12, i32 0, i32 2
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.rndis_device*, %struct.rndis_device** %2, align 8
  %16 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %15, i32 0, i32 1
  %17 = load i32, i32* @rndis_set_multicast, align 4
  %18 = call i32 @INIT_WORK(i32* %16, i32 %17)
  %19 = load i32, i32* @RNDIS_DEV_UNINITIALIZED, align 4
  %20 = load %struct.rndis_device*, %struct.rndis_device** %2, align 8
  %21 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rndis_device*, %struct.rndis_device** %2, align 8
  store %struct.rndis_device* %22, %struct.rndis_device** %1, align 8
  br label %23

23:                                               ; preds = %8, %7
  %24 = load %struct.rndis_device*, %struct.rndis_device** %1, align 8
  ret %struct.rndis_device* %24
}

declare dso_local %struct.rndis_device* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
