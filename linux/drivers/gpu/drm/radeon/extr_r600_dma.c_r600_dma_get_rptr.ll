; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dma.c_r600_dma_get_rptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dma.c_r600_dma_get_rptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.radeon_ring = type { i32 }

@DMA_RB_RPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_dma_get_rptr(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @DMA_RB_RPTR, align 4
  %25 = call i32 @RREG32(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %11
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 262140
  %29 = ashr i32 %28, 2
  ret i32 %29
}

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
