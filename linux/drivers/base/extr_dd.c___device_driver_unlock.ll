; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___device_driver_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___device_driver_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*)* @__device_driver_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__device_driver_unlock(%struct.device* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call i32 @device_unlock(%struct.device* %5)
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @device_unlock(%struct.device* %17)
  br label %19

19:                                               ; preds = %16, %9, %2
  ret void
}

declare dso_local i32 @device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
