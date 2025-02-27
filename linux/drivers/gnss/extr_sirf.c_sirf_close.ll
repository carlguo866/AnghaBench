; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnss_device = type { i32 }
%struct.sirf_data = type { i32, i32, %struct.serdev_device* }
%struct.serdev_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gnss_device*)* @sirf_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirf_close(%struct.gnss_device* %0) #0 {
  %2 = alloca %struct.gnss_device*, align 8
  %3 = alloca %struct.sirf_data*, align 8
  %4 = alloca %struct.serdev_device*, align 8
  store %struct.gnss_device* %0, %struct.gnss_device** %2, align 8
  %5 = load %struct.gnss_device*, %struct.gnss_device** %2, align 8
  %6 = call %struct.sirf_data* @gnss_get_drvdata(%struct.gnss_device* %5)
  store %struct.sirf_data* %6, %struct.sirf_data** %3, align 8
  %7 = load %struct.sirf_data*, %struct.sirf_data** %3, align 8
  %8 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %7, i32 0, i32 2
  %9 = load %struct.serdev_device*, %struct.serdev_device** %8, align 8
  store %struct.serdev_device* %9, %struct.serdev_device** %4, align 8
  %10 = load %struct.sirf_data*, %struct.sirf_data** %3, align 8
  %11 = call i32 @sirf_serdev_close(%struct.sirf_data* %10)
  %12 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %13 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %12, i32 0, i32 0
  %14 = call i32 @pm_runtime_put(i32* %13)
  %15 = load %struct.sirf_data*, %struct.sirf_data** %3, align 8
  %16 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.sirf_data*, %struct.sirf_data** %3, align 8
  %19 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.sirf_data*, %struct.sirf_data** %3, align 8
  %21 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %20, i32 0, i32 1
  %22 = call i32 @mutex_unlock(i32* %21)
  ret void
}

declare dso_local %struct.sirf_data* @gnss_get_drvdata(%struct.gnss_device*) #1

declare dso_local i32 @sirf_serdev_close(%struct.sirf_data*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
