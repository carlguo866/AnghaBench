; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_iio-trig-hrtimer.c_iio_trig_hrtimer_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_iio-trig-hrtimer.c_iio_trig_hrtimer_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_sw_trigger = type { i32 }
%struct.iio_hrtimer_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_sw_trigger*)* @iio_trig_hrtimer_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_trig_hrtimer_remove(%struct.iio_sw_trigger* %0) #0 {
  %2 = alloca %struct.iio_sw_trigger*, align 8
  %3 = alloca %struct.iio_hrtimer_info*, align 8
  store %struct.iio_sw_trigger* %0, %struct.iio_sw_trigger** %2, align 8
  %4 = load %struct.iio_sw_trigger*, %struct.iio_sw_trigger** %2, align 8
  %5 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.iio_hrtimer_info* @iio_trigger_get_drvdata(i32 %6)
  store %struct.iio_hrtimer_info* %7, %struct.iio_hrtimer_info** %3, align 8
  %8 = load %struct.iio_sw_trigger*, %struct.iio_sw_trigger** %2, align 8
  %9 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @iio_trigger_unregister(i32 %10)
  %12 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %3, align 8
  %13 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %12, i32 0, i32 0
  %14 = call i32 @hrtimer_cancel(i32* %13)
  %15 = load %struct.iio_sw_trigger*, %struct.iio_sw_trigger** %2, align 8
  %16 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @iio_trigger_free(i32 %17)
  %19 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %3, align 8
  %20 = call i32 @kfree(%struct.iio_hrtimer_info* %19)
  ret i32 0
}

declare dso_local %struct.iio_hrtimer_info* @iio_trigger_get_drvdata(i32) #1

declare dso_local i32 @iio_trigger_unregister(i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @iio_trigger_free(i32) #1

declare dso_local i32 @kfree(%struct.iio_hrtimer_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
