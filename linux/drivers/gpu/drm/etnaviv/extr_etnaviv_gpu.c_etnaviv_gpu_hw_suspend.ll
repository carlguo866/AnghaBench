; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_hw_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_hw_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32, i32*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gpu*)* @etnaviv_gpu_hw_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_gpu_hw_suspend(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca %struct.etnaviv_gpu*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %2, align 8
  %3 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %4 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %9 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %14 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %17 = call i32 @etnaviv_buffer_end(%struct.etnaviv_gpu* %16)
  %18 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %19 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %18, i32 0, i32 2
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %22 = call i32 @etnaviv_gpu_wait_idle(%struct.etnaviv_gpu* %21, i32 100)
  %23 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %24 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @etnaviv_iommu_context_put(i32* %25)
  %27 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %28 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %12, %7, %1
  %30 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %31 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %33 = call i32 @etnaviv_gpu_clk_disable(%struct.etnaviv_gpu* %32)
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @etnaviv_buffer_end(%struct.etnaviv_gpu*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @etnaviv_gpu_wait_idle(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @etnaviv_iommu_context_put(i32*) #1

declare dso_local i32 @etnaviv_gpu_clk_disable(%struct.etnaviv_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
