; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v3_1.c_uvd_v3_1_semaphore_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v3_1.c_uvd_v3_1_semaphore_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_semaphore = type { i32 }

@UVD_SEMA_ADDR_LOW = common dso_local global i32 0, align 4
@UVD_SEMA_ADDR_HIGH = common dso_local global i32 0, align 4
@UVD_SEMA_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvd_v3_1_semaphore_emit(%struct.radeon_device* %0, %struct.radeon_ring* %1, %struct.radeon_semaphore* %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca %struct.radeon_semaphore*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store %struct.radeon_semaphore* %2, %struct.radeon_semaphore** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %7, align 8
  %11 = getelementptr inbounds %struct.radeon_semaphore, %struct.radeon_semaphore* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %14 = load i32, i32* @UVD_SEMA_ADDR_LOW, align 4
  %15 = call i32 @PACKET0(i32 %14, i32 0)
  %16 = call i32 @radeon_ring_write(%struct.radeon_ring* %13, i32 %15)
  %17 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 3
  %20 = and i32 %19, 1048575
  %21 = call i32 @radeon_ring_write(%struct.radeon_ring* %17, i32 %20)
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %23 = load i32, i32* @UVD_SEMA_ADDR_HIGH, align 4
  %24 = call i32 @PACKET0(i32 %23, i32 0)
  %25 = call i32 @radeon_ring_write(%struct.radeon_ring* %22, i32 %24)
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 23
  %29 = and i32 %28, 1048575
  %30 = call i32 @radeon_ring_write(%struct.radeon_ring* %26, i32 %29)
  %31 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %32 = load i32, i32* @UVD_SEMA_CMD, align 4
  %33 = call i32 @PACKET0(i32 %32, i32 0)
  %34 = call i32 @radeon_ring_write(%struct.radeon_ring* %31, i32 %33)
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = or i32 128, %39
  %41 = call i32 @radeon_ring_write(%struct.radeon_ring* %35, i32 %40)
  ret i32 1
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
