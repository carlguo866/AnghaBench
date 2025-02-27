; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_driver_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_driver_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_driver = type { i32 }
%struct.device = type { i32 }
%struct.ccwgroup_device = type { i32 }

@__ccwgroup_match_all = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccwgroup_driver_unregister(%struct.ccwgroup_driver* %0) #0 {
  %2 = alloca %struct.ccwgroup_driver*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ccwgroup_device*, align 8
  store %struct.ccwgroup_driver* %0, %struct.ccwgroup_driver** %2, align 8
  %5 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %2, align 8
  %6 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %5, i32 0, i32 0
  %7 = call i32 @get_driver(i32* %6)
  br label %8

8:                                                ; preds = %14, %1
  %9 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %2, align 8
  %10 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %9, i32 0, i32 0
  %11 = load i32, i32* @__ccwgroup_match_all, align 4
  %12 = call %struct.device* @driver_find_device(i32* %10, i32* null, i32* null, i32 %11)
  store %struct.device* %12, %struct.device** %3, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device* %15)
  store %struct.ccwgroup_device* %16, %struct.ccwgroup_device** %4, align 8
  %17 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %18 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %21 = call i32 @__ccwgroup_remove_symlinks(%struct.ccwgroup_device* %20)
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call i32 @device_unregister(%struct.device* %22)
  %24 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %25 = call i32 @__ccwgroup_remove_cdev_refs(%struct.ccwgroup_device* %24)
  %26 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %27 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 @put_device(%struct.device* %29)
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %2, align 8
  %33 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %32, i32 0, i32 0
  %34 = call i32 @put_driver(i32* %33)
  %35 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %2, align 8
  %36 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %35, i32 0, i32 0
  %37 = call i32 @driver_unregister(i32* %36)
  ret void
}

declare dso_local i32 @get_driver(i32*) #1

declare dso_local %struct.device* @driver_find_device(i32*, i32*, i32*, i32) #1

declare dso_local %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__ccwgroup_remove_symlinks(%struct.ccwgroup_device*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

declare dso_local i32 @__ccwgroup_remove_cdev_refs(%struct.ccwgroup_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @put_driver(i32*) #1

declare dso_local i32 @driver_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
