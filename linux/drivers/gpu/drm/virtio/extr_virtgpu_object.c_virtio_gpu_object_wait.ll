; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_object.c_virtio_gpu_object_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_object.c_virtio_gpu_object_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_gpu_object_wait(%struct.virtio_gpu_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtio_gpu_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.virtio_gpu_object* %0, %struct.virtio_gpu_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %4, align 8
  %8 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %7, i32 0, i32 0
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ttm_bo_reserve(i32* %8, i32 1, i32 %9, i32* null)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %4, align 8
  %20 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ttm_bo_wait(i32* %20, i32 1, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %4, align 8
  %24 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %23, i32 0, i32 0
  %25 = call i32 @ttm_bo_unreserve(i32* %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %18, %16
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @ttm_bo_reserve(i32*, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_bo_wait(i32*, i32, i32) #1

declare dso_local i32 @ttm_bo_unreserve(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
