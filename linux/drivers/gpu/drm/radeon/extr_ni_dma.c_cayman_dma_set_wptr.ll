; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_set_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_set_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i64, i32 }

@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@DMA_RB_WPTR = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@DMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_dma_set_wptr(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %4, align 8
  %6 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %7 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* @DMA_RB_WPTR, align 8
  %13 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %5, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load i64, i64* @DMA_RB_WPTR, align 8
  %17 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 2
  %25 = and i32 %24, 262140
  %26 = call i32 @WREG32(i64 %20, i32 %25)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
