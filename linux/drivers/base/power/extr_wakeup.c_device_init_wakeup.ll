; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_device_init_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_device_init_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_init_wakeup(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @device_set_wakeup_capable(%struct.device* %16, i32 1)
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @device_wakeup_enable(%struct.device* %18)
  store i32 %19, i32* %6, align 4
  br label %25

20:                                               ; preds = %12
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @device_wakeup_disable(%struct.device* %21)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @device_set_wakeup_capable(%struct.device* %23, i32 0)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @device_set_wakeup_capable(%struct.device*, i32) #1

declare dso_local i32 @device_wakeup_enable(%struct.device*) #1

declare dso_local i32 @device_wakeup_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
