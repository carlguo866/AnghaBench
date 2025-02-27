; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_gem_prime_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_gem_prime_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @amdgpu_gem_prime_vmap(%struct.drm_gem_object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.amdgpu_bo*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %7 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %6)
  store %struct.amdgpu_bo* %7, %struct.amdgpu_bo** %4, align 8
  %8 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %8, i32 0, i32 1
  %10 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %15 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %14, i32 0, i32 0
  %16 = call i32 @ttm_bo_kmap(%struct.TYPE_3__* %9, i32 0, i32 %13, %struct.TYPE_4__* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @ERR_PTR(i32 %20)
  store i8* %21, i8** %2, align 8
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @ttm_bo_kmap(%struct.TYPE_3__*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
