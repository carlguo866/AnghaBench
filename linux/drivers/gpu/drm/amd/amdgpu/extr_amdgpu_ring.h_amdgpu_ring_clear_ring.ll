; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.h_amdgpu_ring_clear_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.h_amdgpu_ring_clear_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @amdgpu_ring_clear_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_ring_clear_ring(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %10, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sle i32 %5, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32 %15, i32* %22, align 4
  br label %4

23:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
