; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_semaphore_ring_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_semaphore_ring_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.radeon_ring = type { i32 }
%struct.radeon_semaphore = type { i32 }

@PACKET3_SEM_SEL_WAIT = common dso_local global i32 0, align 4
@PACKET3_SEM_SEL_SIGNAL = common dso_local global i32 0, align 4
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@PACKET3_SEM_WAIT_ON_SIGNAL = common dso_local global i32 0, align 4
@PACKET3_MEM_SEMAPHORE = common dso_local global i32 0, align 4
@CHIP_CEDAR = common dso_local global i64 0, align 8
@PACKET3_PFP_SYNC_ME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_semaphore_ring_emit(%struct.radeon_device* %0, %struct.radeon_ring* %1, %struct.radeon_semaphore* %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca %struct.radeon_semaphore*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store %struct.radeon_semaphore* %2, %struct.radeon_semaphore** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %7, align 8
  %12 = getelementptr inbounds %struct.radeon_semaphore, %struct.radeon_semaphore* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @PACKET3_SEM_SEL_WAIT, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @PACKET3_SEM_SEL_SIGNAL, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %10, align 4
  %22 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHIP_CAYMAN, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @PACKET3_SEM_WAIT_ON_SIGNAL, align 4
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %33 = load i32, i32* @PACKET3_MEM_SEMAPHORE, align 4
  %34 = call i32 @PACKET3(i32 %33, i32 1)
  %35 = call i32 @radeon_ring_write(%struct.radeon_ring* %32, i32 %34)
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @lower_32_bits(i32 %37)
  %39 = call i32 @radeon_ring_write(%struct.radeon_ring* %36, i32 %38)
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @upper_32_bits(i32 %41)
  %43 = and i32 %42, 255
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @radeon_ring_write(%struct.radeon_ring* %40, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %31
  %50 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CHIP_CEDAR, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %57 = load i32, i32* @PACKET3_PFP_SYNC_ME, align 4
  %58 = call i32 @PACKET3(i32 %57, i32 0)
  %59 = call i32 @radeon_ring_write(%struct.radeon_ring* %56, i32 %58)
  %60 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %61 = call i32 @radeon_ring_write(%struct.radeon_ring* %60, i32 0)
  br label %62

62:                                               ; preds = %55, %49, %31
  ret i32 1
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
