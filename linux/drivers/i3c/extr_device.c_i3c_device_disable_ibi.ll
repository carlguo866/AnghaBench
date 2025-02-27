; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_device.c_i3c_device_disable_ibi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_device.c_i3c_device_disable_ibi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i3c_device_disable_ibi(%struct.i3c_device* %0) #0 {
  %2 = alloca %struct.i3c_device*, align 8
  %3 = alloca i32, align 4
  store %struct.i3c_device* %0, %struct.i3c_device** %2, align 8
  %4 = load i32, i32* @ENOENT, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.i3c_device*, %struct.i3c_device** %2, align 8
  %7 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @i3c_bus_normaluse_lock(i32 %8)
  %10 = load %struct.i3c_device*, %struct.i3c_device** %2, align 8
  %11 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.i3c_device*, %struct.i3c_device** %2, align 8
  %16 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.i3c_device*, %struct.i3c_device** %2, align 8
  %21 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @i3c_dev_disable_ibi_locked(%struct.TYPE_2__* %22)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.i3c_device*, %struct.i3c_device** %2, align 8
  %25 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %29

29:                                               ; preds = %14, %1
  %30 = load %struct.i3c_device*, %struct.i3c_device** %2, align 8
  %31 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @i3c_bus_normaluse_unlock(i32 %32)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @i3c_bus_normaluse_lock(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i3c_dev_disable_ibi_locked(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i3c_bus_normaluse_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
