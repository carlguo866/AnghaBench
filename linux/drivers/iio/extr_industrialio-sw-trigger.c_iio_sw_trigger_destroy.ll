; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-sw-trigger.c_iio_sw_trigger_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-sw-trigger.c_iio_sw_trigger_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_sw_trigger = type { %struct.iio_sw_trigger_type* }
%struct.iio_sw_trigger_type = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iio_sw_trigger*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iio_sw_trigger_destroy(%struct.iio_sw_trigger* %0) #0 {
  %2 = alloca %struct.iio_sw_trigger*, align 8
  %3 = alloca %struct.iio_sw_trigger_type*, align 8
  store %struct.iio_sw_trigger* %0, %struct.iio_sw_trigger** %2, align 8
  %4 = load %struct.iio_sw_trigger*, %struct.iio_sw_trigger** %2, align 8
  %5 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %4, i32 0, i32 0
  %6 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %5, align 8
  store %struct.iio_sw_trigger_type* %6, %struct.iio_sw_trigger_type** %3, align 8
  %7 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %3, align 8
  %8 = getelementptr inbounds %struct.iio_sw_trigger_type, %struct.iio_sw_trigger_type* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.iio_sw_trigger*)*, i32 (%struct.iio_sw_trigger*)** %10, align 8
  %12 = load %struct.iio_sw_trigger*, %struct.iio_sw_trigger** %2, align 8
  %13 = call i32 %11(%struct.iio_sw_trigger* %12)
  %14 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %3, align 8
  %15 = getelementptr inbounds %struct.iio_sw_trigger_type, %struct.iio_sw_trigger_type* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @module_put(i32 %16)
  ret void
}

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
