; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_ring_emit_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_ring_emit_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_job = type { i32 }
%struct.amdgpu_ib = type { i32, i32 }

@SDMA_OP_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, %struct.amdgpu_job*, %struct.amdgpu_ib*, i32)* @sdma_v3_0_ring_emit_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v3_0_ring_emit_ib(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, %struct.amdgpu_ib* %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca %struct.amdgpu_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store %struct.amdgpu_job* %1, %struct.amdgpu_job** %6, align 8
  store %struct.amdgpu_ib* %2, %struct.amdgpu_ib** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %11 = call i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lower_32_bits(i32 %15)
  %17 = and i32 %16, 7
  %18 = sub nsw i32 10, %17
  %19 = srem i32 %18, 8
  %20 = call i32 @sdma_v3_0_ring_insert_nop(%struct.amdgpu_ring* %12, i32 %19)
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %22 = load i32, i32* @SDMA_OP_INDIRECT, align 4
  %23 = call i32 @SDMA_PKT_HEADER_OP(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 15
  %26 = call i32 @SDMA_PKT_INDIRECT_HEADER_VMID(i32 %25)
  %27 = or i32 %23, %26
  %28 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 %27)
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %30 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lower_32_bits(i32 %32)
  %34 = and i32 %33, -32
  %35 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %29, i32 %34)
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %37 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @upper_32_bits(i32 %39)
  %41 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %36, i32 %40)
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %43 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %42, i32 %45)
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %48 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 0)
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %50 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %49, i32 0)
  ret void
}

declare dso_local i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job*) #1

declare dso_local i32 @sdma_v3_0_ring_insert_nop(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @SDMA_PKT_INDIRECT_HEADER_VMID(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
