; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_set_tiocm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_set_tiocm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { %struct.serdev_controller* }
%struct.serdev_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.serdev_controller*, i32, i32)* }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serdev_device_set_tiocm(%struct.serdev_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serdev_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.serdev_controller*, align 8
  store %struct.serdev_device* %0, %struct.serdev_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.serdev_device*, %struct.serdev_device** %5, align 8
  %10 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %9, i32 0, i32 0
  %11 = load %struct.serdev_controller*, %struct.serdev_controller** %10, align 8
  store %struct.serdev_controller* %11, %struct.serdev_controller** %8, align 8
  %12 = load %struct.serdev_controller*, %struct.serdev_controller** %8, align 8
  %13 = icmp ne %struct.serdev_controller* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.serdev_controller*, %struct.serdev_controller** %8, align 8
  %16 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.serdev_controller*, i32, i32)*, i32 (%struct.serdev_controller*, i32, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.serdev_controller*, i32, i32)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14, %3
  %22 = load i32, i32* @ENOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %34

24:                                               ; preds = %14
  %25 = load %struct.serdev_controller*, %struct.serdev_controller** %8, align 8
  %26 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.serdev_controller*, i32, i32)*, i32 (%struct.serdev_controller*, i32, i32)** %28, align 8
  %30 = load %struct.serdev_controller*, %struct.serdev_controller** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 %29(%struct.serdev_controller* %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %24, %21
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
