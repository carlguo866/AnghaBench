; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_supports_scratch_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_supports_scratch_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ring_supports_scratch_reg(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  %6 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %7 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %10 [
    i32 128, label %9
    i32 130, label %9
    i32 129, label %9
  ]

9:                                                ; preds = %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
