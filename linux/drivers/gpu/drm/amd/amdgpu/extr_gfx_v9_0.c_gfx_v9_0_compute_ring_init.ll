; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_compute_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_compute_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.amdgpu_ring* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, i32, i64, i32* }
%struct.TYPE_4__ = type { i32 }

@GFX9_MEC_HPD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"comp_%d.%d.%d\00", align 1
@AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE0_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32, i32, i32)* @gfx_v9_0_compute_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_compute_ring_init(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i64 %20
  store %struct.amdgpu_ring* %21, %struct.amdgpu_ring** %14, align 8
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %25, i64 %27
  store %struct.amdgpu_ring* %28, %struct.amdgpu_ring** %14, align 8
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %39, i32 0, i32 7
  store i32* null, i32** %40, align 8
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %41, i32 0, i32 3
  store i32 1, i32* %42, align 4
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = shl i32 %48, 1
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %51 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @GFX9_MEC_HPD_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %63 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %62, i32 0, i32 6
  store i64 %61, i64* %63, align 8
  %64 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %68 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %71 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @sprintf(i32 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72, i32 %75)
  %77 = load i32, i32* @AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE0_EOP, align 4
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %79 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %81, %86
  %88 = add nsw i32 %77, %87
  %89 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %90 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  store i32 %92, i32* %13, align 4
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %94 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %93, %struct.amdgpu_ring* %94, i32 1024, i32* %97, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %5
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %6, align 4
  br label %105

104:                                              ; preds = %5
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %102
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
