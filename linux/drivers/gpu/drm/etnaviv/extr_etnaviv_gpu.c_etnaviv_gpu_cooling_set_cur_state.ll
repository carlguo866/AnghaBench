; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_cooling_set_cur_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_cooling_set_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.etnaviv_gpu* }
%struct.etnaviv_gpu = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @etnaviv_gpu_cooling_set_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_gpu_cooling_set_cur_state(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca %struct.thermal_cooling_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.etnaviv_gpu*, align 8
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %3, align 8
  %7 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %6, i32 0, i32 0
  %8 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  store %struct.etnaviv_gpu* %8, %struct.etnaviv_gpu** %5, align 8
  %9 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %10 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %14 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_suspended(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %22 = call i32 @etnaviv_gpu_update_clock(%struct.etnaviv_gpu* %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %25 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_suspended(i32) #1

declare dso_local i32 @etnaviv_gpu_update_clock(%struct.etnaviv_gpu*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
