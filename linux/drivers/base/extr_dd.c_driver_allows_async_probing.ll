; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_dd.c_driver_allows_async_probing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_dd.c_driver_allows_async_probing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @driver_allows_async_probing(%struct.device_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_driver*, align 8
  store %struct.device_driver* %0, %struct.device_driver** %3, align 8
  %4 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %5 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %9 [
    i32 128, label %7
    i32 129, label %8
  ]

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %24

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %11 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cmdline_requested_async_probing(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %24

16:                                               ; preds = %9
  %17 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %18 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @module_requested_async_probing(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %24

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %22, %15, %8, %7
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @cmdline_requested_async_probing(i32) #1

declare dso_local i32 @module_requested_async_probing(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
